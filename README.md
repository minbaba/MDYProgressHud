#MDYProgressHud

##介绍
这是一个自定义的hud加载等待条，独具特色，使用简单。

你可以通过指定颜色修改hud的显示效果，使其更加和谐地融入到你的项目里。

##效果图：
![黑色hud](http://i11.tietuku.com/93dbc9b80a668fbd.gif) ![橙色hud](http://i11.tietuku.com/b56b81f763977d74.gif)

#使用方法
将 MDYProgressHud 这个文件夹拖入你的项目里并引用 MDYProgressHud.h

使用

MDYProgressHud *hud = [[MDYProgressHud alloc] initWithFrame:CGRectMake(0, 0, 150, 150) color:[UIColor blackColor]];

[hud showWithView:self.view];

即可在你的视图中插入hud

若要隐藏hud，可以使用：

[hud hide];
