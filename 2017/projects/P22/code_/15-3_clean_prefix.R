
#�ѡ����ݼ������ļ��п�����F���£�����setwd���ù����ռ�
setwd("F:/���ݼ�����/chapter15/ʾ������")
#��������
Data1 = readLines("./data/meidi_jd_process_end_������н��.txt",encoding = "UTF-8")
Data2 = readLines("./data/meidi_jd_process_end_������н��.txt",encoding = "UTF-8")

for (i in 1:length(Data1))
  {
Data1[i] = unlist(strsplit(Data1[i], "\\t"))[2]
}
for (i in 1:length(Data2))
{
  Data2[i] = unlist(strsplit(Data2[i], "\\t"))[2]
}
write.table(Data1,"./tmp/meidi_jd_neg.txt",row.names=FALSE)
write.table(Data2,"./tmp/meidi_jd_pos.txt",row.names=FALSE)