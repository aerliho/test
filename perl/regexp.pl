#

sub check_title {
    my $title = shift;
    if ($title =~ /��|����|�Ż�/) {
        #print "\nƥ�䵽 ��|����|�Ż�";
        my $sales = getSales($title);
        print ' ', $sales, "\n";
        $title =~ s/$sales/<span class="redFont"\>$sales<\/span\>/;
    }
    return $title;
}

sub getSales {
    my $title = shift;

    if ($title =~ /ǧ/ && $title !~ /Ԫ/) {
        $title =~ s/ǧ/ǧԪ/g;
    }
    if ($title =~ /��/ && $title !~ /Ԫ/) {
        $title =~ s/��/��Ԫ/g;
    }

    #print $title;

    if ($title =~ /��(\d*\.?\d+(ǧ|��)?Ԫ)/) {
        print 'case1';
    }
    elsif ($title =~ /����(\d*\.?\d+(ǧ|��)?Ԫ)/) {
        print 'case2';
    }
    elsif ($title =~ /(\d*\.?\d+(ǧ|��)?Ԫ)�Ż�/) {
        print 'case3';
    }
    elsif ($title =~ /�Ż�(\d*\.?\d+(ǧ|��)?Ԫ)/) {
        print 'case4';
    }
    else {
        print 'case5';
        return ''; 
    }

    return $1;
}

my $title = '';
$title = '3ǧԪ�Ż�';
check_title($title);
$title = '��3000Ԫ';
check_title($title);
$title = '����20.5��Ԫ';
check_title($title);
$title = '�Ż�10��Ԫ';
check_title($title);




=pod
my $str1 = '����111@0#';
my $str2 = '32302304((##';


if ($str1 =~ /([\x80-\xFF][\x80-\xFF])/) {
    print "\n", $1;
    print "\nchinese3";
}

if ($str2 =~ /([\x80-\xFF][\x80-\xFF])/) {
    print "\nchinese4";
}

if ($str1 =~ /([\x80-\xFF])/) {
    print "\nchinese5";
}

if ($str1 =~ /[\u4e00-\u9fa5]/) {
    print "\nchinese1";
}

if ($str2 =~ /[\u4e00-\u9fa5]/) {
    print "\nchinese2";
}

my $html = qq~
<div class="front_term_list ft1">
				<div class="litpic"><a href="/content/news/1636" target="_blank"><img src="/sites/files/user-203/2013-12/7061/200x150_scale_and_crop.jpg" title="����ĳ�������ҵ���������򣬼�ֵ����" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1636" target="_blank">����ĳ�������ҵ���������򣬼�ֵ����</a><!--<span class="hot"><img src="/sites/themes/che1/images/hot.jpg" /></span>--></h3>
					<div class="submit"><span class="author"><a href="/content/news/1636" target="_blank">��Ѷ�Ƽ�</a></span>������&nbsp;&nbsp;2013-12-15 10:23</div>
					<div class="des"><a href="/content/news/1636">��������ҵ�����ڻ�������״̬���г�ǰ����������ҵ�������ڲ�֪����Ϸ�淨��Ҳû����Ϸ����Ĵ󻷾��£�������һ����Ȳ��ġ�<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/������" target="_blank">������</a></li>
															<li><a href="/tags/����ϵͳ" target="_blank">����ϵͳ</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=������ĳ�������ҵ���������򣬼�ֵ���ǡ���������ҵ�����ڻ�������״̬���г�ǰ����������ҵ�������ڲ�֪����Ϸ�淨��Ҳû����Ϸ����Ĵ󻷾��£�������һ����Ȳ��ġ�(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1636&pic=http://www.cheyun.com/sites/files/weibo/chang/9302093b32db22d0e42dd7525badba9b.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=������ĳ�������ҵ���������򣬼�ֵ���ǡ���������ҵ�����ڻ�������״̬���г�ǰ����������ҵ�������ڲ�֪����Ϸ�淨��Ҳû����Ϸ����Ĵ󻷾��£�������һ����Ȳ��ġ�(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1636&pic=http://www.cheyun.com/sites/files/weibo/chang/9302093b32db22d0e42dd7525badba9b.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1636#comment_form">0</a></span>
						</div>
					</div>
				</div>
			</div>
				<div class="front_term_list ft2">
				<div class="litpic"><a href="/content/news/1630" target="_blank"><img src="/sites/files/user-203/2013-12/7041/200x150_scale_and_crop.jpg" title="�������������ϵ綯��" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1630" target="_blank">�������������ϵ綯��</a></h3>
					<div class="submit"><span class="author"><a href="/content/news/1630" target="_blank">������ҵ����</a></span>������&nbsp;&nbsp;2013-12-15 09:37</div>
					<div class="des"><a href="/content/news/1630">�綯�����������������ʸ����������������������Ļ�ѧ��Ӧ��80%���������û�ϣ����ʻ�綯���������������Դ�����ĺ��̻���<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/�綯��" target="_blank">�綯��</a></li>
															<li><a href="/tags/��������" target="_blank">��������</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=���������������ϵ綯�����綯�����������������ʸ����������������������Ļ�ѧ��Ӧ��80%���������û�ϣ����ʻ�綯���������������Դ�����ĺ��̻���(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1630&pic=http://www.cheyun.com/sites/files/weibo/chang/21d177b8ef59608fdcd40d7786aeaa3b.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=���������������ϵ綯�����綯�����������������ʸ����������������������Ļ�ѧ��Ӧ��80%���������û�ϣ����ʻ�綯���������������Դ�����ĺ��̻���(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1630&pic=http://www.cheyun.com/sites/files/weibo/chang/21d177b8ef59608fdcd40d7786aeaa3b.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1630#comment_form">1</a></span>
						</div>
					</div>
				</div>
			</div>
				<div class="front_term_list ft3">
				<div class="litpic"><a href="/content/news/1632" target="_blank"><img src="/sites/files/baidueditor/fa22767981f4cd836313bef96c6f912e.jpg" title="��һ�ܶ�̬��Tesla�й��������ߣ�ͨ��������λŮCEO���������׿�춯������" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1632" target="_blank">��һ�ܶ�̬��Tesla�й��������ߣ�ͨ��������λŮCEO���������׿�춯������</a></h3>
					<div class="submit"><span class="author"><a href="/content/news/1632" target="_blank">������</a></span>������&nbsp;&nbsp;2013-12-15 09:22</div>
					<div class="des"><a href="/content/news/1632">���������豸Zubie����1000��?������Ʒ�ƻ�����������3�꾻�����20�ڡ������У������е�һ���ñ��رҹ����TESLA��<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/һ�ܶ�̬" target="_blank">һ�ܶ�̬</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=����һ�ܶ�̬��Tesla�й��������ߣ�ͨ��������λŮCEO���������׿�춯�����������������豸Zubie����1000��?������Ʒ�ƻ�����������3�꾻�����20�ڡ������У������е�һ���ñ��رҹ����TESLA��(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1632&pic=http://www.cheyun.com/sites/files/weibo/chang/436e1009bbfd004a19a8c83cba34498d.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=����һ�ܶ�̬��Tesla�й��������ߣ�ͨ��������λŮCEO���������׿�춯�����������������豸Zubie����1000��?������Ʒ�ƻ�����������3�꾻�����20�ڡ������У������е�һ���ñ��رҹ����TESLA��(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1632&pic=http://www.cheyun.com/sites/files/weibo/chang/436e1009bbfd004a19a8c83cba34498d.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1632#comment_form">0</a></span>
						</div>
					</div>
				</div>
			</div>
				<div class="front_term_list ft4">
				<div class="litpic"><a href="/content/news/1634" target="_blank"><img src="/sites/files/user-203/2013-12/7059/200x150_scale_and_crop.jpg" title="��ΰ����Ǩ�ǣ����ڡ��ڸ�Ψһ����" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1634" target="_blank">��ΰ����Ǩ�ǣ����ڡ��ڸ�Ψһ����</a></h3>
					<div class="submit"><span class="author"><a href="/content/news/1634" target="_blank">ͷ������</a></span>������&nbsp;&nbsp;2013-12-15 09:04</div>
					<div class="des"><a href="/content/news/1634">�Ǳ���һֽ����������ΰ����Ϊ�¹�������Ϊ��Ҫ������߹ܡ���ǿӲ����ʧ����Ϊ�й��г������й��������ˡ�<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/����" target="_blank">����</a></li>
															<li><a href="/tags/ְ��" target="_blank">ְ��</a></li>
															<li><a href="/tags/ͷ��" target="_blank">ͷ��</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=����ΰ����Ǩ�ǣ����ڡ��ڸ�Ψһ���ˡ��Ǳ���һֽ����������ΰ����Ϊ�¹�������Ϊ��Ҫ������߹ܡ���ǿӲ����ʧ����Ϊ�й��г������й��������ˡ�(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1634&pic=http://www.cheyun.com/sites/files/weibo/chang/56dc011b3e24133f418f90a3fb0cf568.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=����ΰ����Ǩ�ǣ����ڡ��ڸ�Ψһ���ˡ��Ǳ���һֽ����������ΰ����Ϊ�¹�������Ϊ��Ҫ������߹ܡ���ǿӲ����ʧ����Ϊ�й��г������й��������ˡ�(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1634&pic=http://www.cheyun.com/sites/files/weibo/chang/56dc011b3e24133f418f90a3fb0cf568.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1634#comment_form">1</a></span>
						</div>
					</div>
				</div>
			</div>
				<div class="front_term_list ft5">
				<div class="litpic"><a href="/content/news/1631" target="_blank"><img src="/sites/files/baidueditor/dbb94b50c534ec2544d2d05b3fe5e6e7.jpg" title="�ֶ���S60L���й�����ġ����ڡ���" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1631" target="_blank">�ֶ���S60L���й�����ġ����ڡ���</a></h3>
					<div class="submit"><span class="author"><a href="/content/news/1631" target="_blank">������</a></span>������&nbsp;&nbsp;2013-12-14 10:08</div>
					<div class="des"><a href="/content/news/1631">��Ϊ�ֶ��ֳɶ������ĵ�һ���Ʒ��S60L����ӵ���ֶ����ڰ�ȫ����ĳ������ƣ�����һ�����С��츳�����й�����Ľ��ڳ���<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/�ֶ���" target="_blank">�ֶ���</a></li>
															<li><a href="/tags/Ӫ��" target="_blank">Ӫ��</a></li>
															<li><a href="/tags/��ȫ" target="_blank">��ȫ</a></li>
															<li><a href="/tags/����" target="_blank">����</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=���ֶ���S60L���й�����ġ����ڡ�������Ϊ�ֶ��ֳɶ������ĵ�һ���Ʒ��S60L����ӵ���ֶ����ڰ�ȫ����ĳ������ƣ�����һ�����С��츳�����й�����Ľ��ڳ���(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1631&pic=http://www.cheyun.com/sites/files/weibo/chang/c0be114a53199a0a3baf81a7da0ba2ff.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=���ֶ���S60L���й�����ġ����ڡ�������Ϊ�ֶ��ֳɶ������ĵ�һ���Ʒ��S60L����ӵ���ֶ����ڰ�ȫ����ĳ������ƣ�����һ�����С��츳�����й�����Ľ��ڳ���(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1631&pic=http://www.cheyun.com/sites/files/weibo/chang/c0be114a53199a0a3baf81a7da0ba2ff.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1631#comment_form">5</a></span>
						</div>
					</div>
				</div>
			</div>
				<div class="front_term_list ft6">
				<div class="litpic"><a href="/content/news/1626" target="_blank"><img src="/sites/files/user-203/2013-12/7039/200x150_scale_and_crop.jpg" title="��Ӣ�����ࡰ���ޡ����ݱ�·�����й���Ұ������" width="200" height="150" /></a>
				</div>
				<div class="fcon_right">
					<h3><a href="/content/news/1626" target="_blank">��Ӣ�����ࡰ���ޡ����ݱ�·�����й���Ұ������</a></h3>
					<div class="submit"><span class="author"><a href="/content/news/1626" target="_blank">��һ�ƾ��ܿ�</a></span>������&nbsp;&nbsp;2013-12-14 08:33</div>
					<div class="des"><a href="/content/news/1626">����45��Ӣ����2014���공���ɹ�����¼ǩ�����Ӣ�����࿨÷�׵ġ����ޡ����ݱ�·�����й�������һ�г���Ұ�Ľ�һ�����͡�<span class="fmore"></span></a></div>
					<div class="fcon_bottom">
						<div class="ftags">
															<li><a href="/tags/�ݱ�" target="_blank">�ݱ�</a></li>
															<li><a href="/tags/·��" target="_blank">·��</a></li>
															<li><a href="/tags/ͷ��" target="_blank">ͷ��</a></li>
													</div>
						<div class="fshare">
							<span class="qq"><a href="http://share.v.t.qq.com/index.php?c=share&a=index&title=����Ӣ�����ࡰ���ޡ����ݱ�·�����й���Ұ�����͡�����45��Ӣ����2014���공���ɹ�����¼ǩ�����Ӣ�����࿨÷�׵ġ����ޡ����ݱ�·�����й�������һ�г���Ұ�Ľ�һ�����͡�(������@cheyunwang)&appkey=801341757&url=http://www.cheyun.com/content/news/1626&pic=http://www.cheyun.com/sites/files/weibo/chang/2de52c743659d442447d62a41b11b2f7.png&line1=" target="_blank"></a></span>
							<span class="sina"><a href="http://service.weibo.com/share/share.php?title=����Ӣ�����ࡰ���ޡ����ݱ�·�����й���Ұ�����͡�����45��Ӣ����2014���공���ɹ�����¼ǩ�����Ӣ�����࿨÷�׵ġ����ޡ����ݱ�·�����й�������һ�г���Ұ�Ľ�һ�����͡�(������@������)&appkey=2772204160&url=http://www.cheyun.com/content/news/1626&pic=http://www.cheyun.com/sites/files/weibo/chang/2de52c743659d442447d62a41b11b2f7.png" target="_blank"></a></span>
							<span class="cnum"><a href="/content/news/1626#comment_form">0</a></span>
						</div>
					</div>
				</div>
			</div>
~;

while($html =~ /<div class="litpic"\><a href[^\>]*?\><img src="(.*?)"[^\>]*?\>.*?<h3\><a href[^\>]*?\>(.*?)<\/a\><\/h3\>/) {

}
=cut



