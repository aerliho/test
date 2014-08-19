#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>

#define M 3

//�ڵ�ṹ��
typedef struct BtreeNode
{
    int num;
    struct BtreeNode *p[2*M];
    int key[2*M-1];
    bool isleaf;
}BtreeNode;

BtreeNode * BtreeCreate();
void BtreeSplitChild(BtreeNode *father,BtreeNode *child,int k);
void BtreeInsertNotFull(BtreeNode *x,int keyword);
BtreeNode * BtreeInsert(BtreeNode *TestNode,int keyword);
BtreeNode *BtreeSearch(BtreeNode *TestNode,int keyword);

//////
void BtreeMergeChild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z);
BtreeNode *BtreeDelete(BtreeNode *root, int keyword);
void BtreeDeleteNotFull(BtreeNode *root, int keyword);
int BtreeSearchPrevious(BtreeNode *root);
int BtreeSearchNext(BtreeNode *root);
void BtreeChangeToRchild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z);
void BtreeChangeToLchild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z);

/**********************************************************\
�������ܣ������ڵ�
���룺��
������½ڵ�
\**********************************************************/
BtreeNode * BtreeCreate()
{
    BtreeNode *node=(BtreeNode *)malloc(sizeof(BtreeNode));
    if(NULL==node)
        return NULL;
    node->isleaf=true;
    node->num=0;
    for(int i=0;i<2*M;i++)
        node->p[i]=NULL;
    for(int i=0;i<2*M-1;i++)
        node->key[i]=0;
    return node;
}
//////////////////////////////���벿��///////////////////////////////////////////
/**********************************************************\
�������ܣ��ڵ���ѣ���ֹΥ��B��������
���룺 ���ڵ�father ,�ӽڵ�child��k��ʾ�ӽڵ�Ϊ���ڵ���ĸ�����
�������
\**********************************************************/
void BtreeSplitChild(BtreeNode *father,BtreeNode *child,int k)
{
    BtreeNode *newchild=(BtreeNode *)malloc(sizeof(BtreeNode));
    newchild->isleaf=child->isleaf;//newchildΪchild���ҽڵ㣬��child����Ϊchild��newchild
    newchild->num=M-1;
    for(int i=0;i<M-1;i++)
        newchild->key[i]=child->key[i+M];
    if(!child->isleaf)//��child����Ҷ��ʱ����Ҫ��ָ�븳��newchild
    {
        for(int j=0;j<M;j++)
            newchild->p[j]=child->p[j+M];
    }

    child->num=M-1;//child�ĸ�����2M-1��ΪM-1

    for(int i=father->num;i>=k+1;i--)//�ı丸�ڵ������
    {
        father->p[i+1]=father->p[i];
    }
    father->p[k+1]=newchild;
    for(int j=father->num-1;j>=k;j--)
        father->key[j+1]=father->key[j];
    father->key[k]=child->key[M-1];//��child���м�ڵ����������ڵ�
    father->num=father->num+1;


}

/**********************************************************\
�������ܣ�x�ڵ㲻����������£�����keyword
���룺B���ĸ���Ҫ����Ĺؼ���
�������
\**********************************************************/
void BtreeInsertNotFull(BtreeNode *x,int keyword)
{
    int i=x->num;
    if(x->isleaf)//��xΪҶ��ʱ��keyword���뵽�ýڵ���
    {
        while(i>=1&&keyword<x->key[i-1])
        {
            x->key[i]=x->key[i-1];
            i=i-1;
        }
        x->key[i]=keyword;
        x->num=x->num+1;
    }
    else//��x����Ҷ��ʱ���ҵ�keywordҪ����Ľڵ㲢����
    {
        i=x->num;
        while(i>=1&&keyword<x->key[i-1])
        {
            i=i-1;
        }

        if(x->p[i]->num==2*M-1)//���ڵ�Ϊ���ڵ�ʱ����Ҫ����
        {
            BtreeSplitChild(x,x->p[i],i);
            if(keyword>x->key[i])
                i=i+1;

        }
        BtreeInsertNotFull(x->p[i],keyword);
    }
}

/**********************************************************\
�������ܣ�����ؼ�ֵ
���룺B���ĸ����ؼ���
�����B���ĸ�
\**********************************************************/
BtreeNode * BtreeInsert(BtreeNode *TestNode,int keyword)
{
    if(TestNode->num==2*M-1)//�����ڵ�Ϊ��ʱ��Ψһ���Ӹ߶ȵ����
    {

        BtreeNode *newroot=(BtreeNode *)malloc(sizeof(BtreeNode));
        newroot->isleaf=false;//�����µĸ�
        newroot->num=0;
        newroot->p[0]=TestNode;
        BtreeSplitChild(newroot,TestNode,0);
        BtreeInsertNotFull(newroot,keyword);
        return newroot;
    }
    else
    {

        BtreeInsertNotFull(TestNode,keyword);
        return TestNode;
    }

}

/**********************************************************\
�������ܣ����ҹؼ������ڵĽڵ�
���룺    ���ĸ����ؼ���
�����    �ؼ������ڵĽڵ�
\**********************************************************/
BtreeNode *BtreeSearch(BtreeNode *TestNode,int keyword)
{
    int i=0;
    while(i<TestNode->num&&keyword>TestNode->key[i])
        i=i+1;
    if(i<=TestNode->num&&keyword==TestNode->key[i])
        return TestNode;
    if(TestNode->isleaf)
    {
        printf("Not founded!\n");
        return NULL;
    }
    else
    {
        return BtreeSearch(TestNode->p[i],keyword);
    }
}




///////////////////////////ɾ������//////////////////////////////////////////
/**********************************************************\
�������ܣ��ϲ������ӽڵ�
���룺���������ӽڵ㣬��ڵ��Ǹ��ڵ�ĵ�pos���ڵ�
�������
\**********************************************************/
void BtreeMergeChild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z)
{
    // ��z�нڵ㿽����y�ĺ�벿��
    y->num = 2 * M - 1;
    for(int i = M; i < 2 * M - 1; i++)
    {
        y->key[i] = z->key[i-M];
    }
    y->key[M-1] = root->key[pos]; // ��root->key[pos]�½�Ϊy���м�ڵ�


    if(false == z->isleaf)// ���z���ڽڵ㼴��Ҷ�ӣ���Ҫ����ָ���ӽڵ��ָ��p
    {
        for(int i = M; i < 2 * M; i++)
        {
            y->p[i] = z->p[i-M];
        }
    }


    for(int j = pos + 1; j < root->num; j++) // root->key[pos]�½���y�У�����root��key��p
    {
        root->key[j-1] = root->key[j];
        root->p[j] = root->p[j+1];
    }

    root->num -= 1;
    free(z);
}

/**********************************************************\
�������ܣ�ɾ���ؼ���keyword
���룺���ĸ����ؼ���
��������ĸ�
\**********************************************************/
BtreeNode *BtreeDelete(BtreeNode *root, int keyword)
{

    // Ψһ�ܽ������ߵ�����
    if(1 == root->num) // ����ֻ��һ���ؼ��֣�������Ů
    {
        BtreeNode *y = root->p[0];
        BtreeNode *z = root->p[1];
        if(NULL != y && NULL != z &&M - 1 == y->num && M - 1 == z->num)//������Ů�Ĺؼ��ָ�����ΪM-1ʱ���ϲ�����������Ů
        {
            BtreeMergeChild(root, 0, y, z);
            free(root);//ע���ͷſռ�
            BtreeDeleteNotFull(y, keyword);
            return y;
        }
        else
        {
            BtreeDeleteNotFull(root, keyword);
            return root;
        }
    }
    else
    {
        BtreeDeleteNotFull(root, keyword);
        return root;
    }
}

/**********************************************************\
�������ܣ� root�����и�M���ؼ���ʱɾ���ؼ���
���룺   ���ĸ����ؼ���
�����   ��
\**********************************************************/
void BtreeDeleteNotFull(BtreeNode *root, int keyword)
{
    if(true == root->isleaf) // �����Ҷ�ӽڵ㣬ֱ��ɾ��,���1
    {
        int i = 0;
        while(i < root->num && keyword > root->key[i]) i++;
        if(keyword == root->key[i])
        {
            for(int j = i + 1; j < 2 * M - 1; j++)
            {
                root->key[j-1] = root->key[j];
            }
            root->num -= 1;
        }
        else
        {
            printf("keyword not found\n");
        }
    }
    else
    {  // �ڷ�֧��
        int i = 0;
        BtreeNode *y = NULL, *z = NULL;
        while(i < root->num && keyword > root->key[i]) i++;
        if(i < root->num && keyword == root->key[i])
        { // ����ڷ�֧�ڵ��ҵ�keyword
            y = root->p[i];
            z = root->p[i+1];
            if(y->num > M - 1)
            {
              // ������֧�ؼ��ֶ���M-1�����ҵ����֧�����ҽڵ�pre���滻keyword
                // �������֧�еݹ�ɾ��prev,���2a
                int pre = BtreeSearchPrevious(y);
                root->key[i] = pre;
                BtreeDeleteNotFull(y, pre);//�ݹ鴦��
            }
            else if(z->num > M - 1)
            {
                // ����ҷ�֧�ؼ��ֶ���M-1�����ҵ��ҷ�֧������ڵ�next���滻keyword
                // �����ҷ�֧�еݹ�ɾ��next,���2b
                int next = BtreeSearchNext(z);
                root->key[i] = next;
                BtreeDeleteNotFull(z, next);
            }
            else // ������֧�ڵ�����ΪM-1����ϲ���y������y�еݹ�ɾ��keyword,���2c
            {

                BtreeMergeChild(root, i, y, z);
                BtreeDelete(y, keyword);
            }
        }
        else// ��֧��û�У��ڷ�֧���ӽڵ��е����
        {
            y = root->p[i];
            if(i < root->num)
            {
                z = root->p[i+1];//y�����ֵ�
            }
            BtreeNode *p = NULL;//��ʼ��
            if(i > 0)
            {
                p = root->p[i-1];//y�����ֵ�
            }

            if(y->num == M - 1)
            {
                if(i > 0 && p->num > M - 1)
                {
                    // ���ֵܽڵ�ؼ��ָ�������M-1,���3a
                    BtreeChangeToRchild(root, i-1, p, y);
                }
                else if(i < root->num && z->num > M - 1)
                {
                    // ���ֵܽڵ�ؼ��ָ�������M-1,���3a
                    BtreeChangeToLchild(root, i, y, z);
                }
                else if(i > 0)
                {
                    BtreeMergeChild(root, i-1, p, y);  //�����ֵܽڵ㶼������M-1�����3b
                    y = p;
                }
                else //û�����ֵܵ����
                {
                    BtreeMergeChild(root, i, y, z);
                }
                BtreeDeleteNotFull(y, keyword);
            }
            else
            {
                BtreeDeleteNotFull(y, keyword);
            }
        }

    }
}

/**********************************************************\
�������ܣ�Ѱ����rootΪ�������ؼ���
���룺    ���ĸ�
�����    ���ؼ���
\**********************************************************/
int BtreeSearchPrevious(BtreeNode *root)
{
    BtreeNode *y = root;
    while(false == y->isleaf)
    {
        y = y->p[y->num];
    }
    return y->key[y->num-1];
}

/**********************************************************\
�������ܣ�Ѱ����rootΪ������С�ؼ���
���룺���ĸ�
�������С�ؼ���
\**********************************************************/
int BtreeSearchNext(BtreeNode *root)
{
    BtreeNode *z = root;
    while(false == z->isleaf)
    {
        z = z->p[0];
    }
    return z->key[0];
}


/**********************************************************\
�������ܣ�z��y��ڵ㣬��root->key[pos]�½���z����y�����ؼ���������root��pos��
���룺���������ӽڵ㣬��ڵ��Ǹ��ڵ�ĵ�pos���ڵ�
�������
\**********************************************************/
void BtreeChangeToRchild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z)
{
    z->num += 1;
    for(int i = z->num -1; i > 0; i--)
    {
        z->key[i] = z->key[i-1];
    }
    z->key[0]= root->key[pos];
    root->key[pos] = y->key[y->num-1];

    if(false == z->isleaf)
    {
        for(int i = z->num; i > 0; i--)
        {
            z->p[i] = z->p[i-1];
        }
        z->p[0] = y->p[y->num];
    }

    y->num -= 1;
}


/**********************************************************\
�������ܣ�y���ڵ㣬��root->key[pos]�½���y����z����С�ؼ���������root��pos��
���룺���������ӽڵ㣬��ڵ��Ǹ��ڵ�ĵ�pos���ڵ�
�������
\**********************************************************/
void BtreeChangeToLchild(BtreeNode *root, int pos, BtreeNode *y, BtreeNode *z)
{
    y->num += 1;
    y->key[y->num-1] = root->key[pos];
    root->key[pos] = z->key[0];

    for(int j = 1; j < z->num; j++)
    {
        z->key[j-1] = z->key[j];
    }

    if(false == z->isleaf)
    {
        y->p[y->num] = z->p[0];
        for(int j = 1; j <= z->num; j++)
        {
            z->p[j-1] = z->p[j];
        }
    }

    z->num -= 1;
}


//����α���B��
void Print(BtreeNode *root)
{
    int front,rear;
    int num=0;
    int num1=0;
    int flag=0;
    BtreeNode *queue[100];
    BtreeNode *s;
    if(root!=NULL)
    {
        rear=1;
        front=0;
        queue[rear]=root;
        while(front<rear)
        {
            front++;

            s=queue[front];

            if(!s->isleaf)
            {
                for(int j=0;j<=s->num;j++)
                {
                    if(s->p[j]!=NULL)
                    {
                        rear++;
                        queue[rear]=s->p[j];

                    }
                }
            }

        }
            for(int k=1;k<=rear;k++)//ʹ������׿�
            {
                for(int i=0;i<queue[k]->num;i++)
                    printf("%d ",queue[k]->key[i]);
                printf("| ");
                if(k>num)
                {

                    while(flag<k)
                    {
                    num=num+queue[flag+1]->num+1;
                    flag++;
                    }
                printf("\n");
                flag=k;
                }

            }



    }
}


////////////////////////////////////////////////////////////////////////////
void main()
{
/**************************��ʼ��**************************/
    BtreeNode *TestNode=BtreeCreate();
    BtreeNode *Node1=BtreeCreate();
    BtreeNode *Node2=BtreeCreate();
    BtreeNode *Node3=BtreeCreate();
    BtreeNode *Node4=BtreeCreate();
    BtreeNode *Node5=BtreeCreate();
    BtreeNode *root=BtreeCreate();

    BtreeNode *SearchNode=BtreeCreate();
    TestNode->isleaf=false;
    TestNode->num=4;
    TestNode->key[0]=7;
    TestNode->key[1]=13;
    TestNode->key[2]=16;
    TestNode->key[3]=24;
    TestNode->p[0]=Node1;
    TestNode->p[1]=Node2;
    TestNode->p[2]=Node3;
    TestNode->p[3]=Node4;
    TestNode->p[4]=Node5;

    Node1->isleaf=true;
    Node1->num=4;
    Node1->key[0]=1;
    Node1->key[1]=3;
    Node1->key[2]=4;
    Node1->key[3]=5;

    Node2->isleaf=true;
    Node2->num=2;
    Node2->key[0]=10;
    Node2->key[1]=11;


    Node3->isleaf=true;
    Node3->num=2;
    Node3->key[0]=14;
    Node3->key[1]=15;


    Node4->isleaf=true;
    Node4->num=5;
    Node4->key[0]=18;
    Node4->key[1]=19;
    Node4->key[2]=20;
    Node4->key[3]=21;
    Node4->key[4]=22;


    Node5->isleaf=true;
    Node5->num=2;
    Node5->key[0]=25;
    Node5->key[1]=26;
    root=TestNode;
/*******************************��ʼ������***********************/
    printf("ԭʼB����\n");
    Print(root);
    root=BtreeInsert(root,2);
    printf("\n����ؼ���Ϊ2���B����\n");
    Print(root);
    root=BtreeInsert(root,17);
    printf("\n����ؼ���Ϊ17���B����\n");
    Print(root);
    root=BtreeInsert(root,12);
    printf("\n����ؼ���Ϊ12���B����\n");
    Print(root);
    root=BtreeInsert(root,6);
    printf("\n����ؼ���Ϊ6���B����\n");
    Print(root);
    printf("\n\n");
    //ɾ������
    root=BtreeDelete(root,6);
    printf("\nɾ���ؼ���Ϊ6���B����\n");
    Print(root);

    root=BtreeDelete(root,13);
    printf("\nɾ���ؼ���Ϊ13���B����\n");
    Print(root);

    root=BtreeDelete(root,7);
    printf("\nɾ���ؼ���Ϊ7���B����\n");
    Print(root);

    root=BtreeDelete(root,4);
    printf("\nɾ���ؼ���Ϊ4���B����\n");
    Print(root);


    root=BtreeDelete(root,2);
    printf("\nɾ���ؼ���Ϊ2���B����\n");
    Print(root);

}
