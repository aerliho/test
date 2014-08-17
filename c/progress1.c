#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<errno.h>
#define SLEEP_TIME 2
#define SLEEP_TIME1 3
extern int errno;
int main(void)
{
    pid_t child;
    int i=0;
    //ʹ��ϵͳ����fork����һ���ӽ���
    //����ʧ�ܵĻ�������-1
    if((child=fork())==-1)
    {
        printf("Firk Eroor :%s\n",strerror(errno));
        return -1;
    }
    //�����ӽ���,fork����0
    else if(child==0)
    {
        int j;
        printf("I am the child :%ld\n",(long)getpid());
        for(j=0;j<5;j++,i++)
        {
            printf("child_pro: %d\n",i);
            sleep(SLEEP_TIME);
        }
        printf("Child exit with:%d\n",i);
    }
    //���ڸ�����fork�����ӽ��̵�ID
    else
    {
        int j;
        printf("I'm the parent :%ld\n",(long)getpid());
        for(j=0;j<5;j++,i--)
        {
            printf("parent_pro: %d\n",i);
            sleep(SLEEP_TIME1);
        }
        printf("Parent exit with:%d\n",i);
    }
    printf("Who am I :%d\n",i);
    return 0;
}
