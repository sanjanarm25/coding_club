cd ../
mkdir main
cd main
mkdir -p sub1 sub2 sub3
cd ../items
for items in `ls | grep a.pdf && ls | grep b.docx && ls | grep c.mp3`
do 
name=`echo $items | awk -F. '{print $1}'`
extension=`echo $items | awk -F. '{print $2}'`
mkdir -p $extension/$name
cp $items $extension/$name
mv $extension ../main/sub2
done
