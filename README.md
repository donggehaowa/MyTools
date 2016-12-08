# **FBDTools** 工具类的简介
# 使用说明
#### 步奏1：在项目的pod 文件里面添加一句话： pod 'FBDTools', '0.1'
#### 步奏2：在命令行中 pod install ；
#### 步奏3：回到xcode 中直接 COM+R 键组合；
#### 步奏4：使用代码前需要导入头文件 UIView+FBDQuickCreateUI ShowAlertTool FBDChineseCodeTool等文件；
# 使用场景
##### 以前iOS 的界面问题都是frame来布局，它是一个结构体（起点xy 大小size），这样的基础上封装了UIView+FBDQuickCreateUI 这个类别 ；因为我们的UI控件大部分都是继承UIView的 所以 初始化控件可以在UIView的基础上扩展；里面有快速生成控件的API；

# 具体分析

```
/**
 *  快速创建UIButton
 *
 *  @param frame 位置
 *
 *  @return UIButton 实例
 */
-(UIButton*)fbd_quickCreateUIButtonWithFrame:(CGRect)frame;
/**
 *  快速创建UILabel
 *
 *  @param frame 位置
 *
 *  @return UILabel 实例
 */
-(UILabel*)fbd_quickCreateUILabelWithFrame:(CGRect)frame;

/**
 *  快速创建UIView
 *
 *  @param frame 位置
 *
 *  @return UIView 实例
 */
-(UIView*)fbd_quickCreateUIViewWithFrame:(CGRect)frame;

/**
 *  快速创建UIImageView
 *
 *  @param frame 位置
 *
 *  @return UIImageView 实例
 */
-(UIImageView*)fbd_quickCreateUIImageViewWithFrame:(CGRect)frame withImageName:(NSString*)imageName;

/**
 *  快速创建UIImage
 *
 *  @param frame 位置
 *
 *  @return UIImageView 实例
 */
-(UIImage*)fbd_quickCreateUIImageWithImageName:(NSString*)imageName;


/**
 *  快速创建UITextFiled
 *
 *  @param frame 位置
 *
 *  @param placeHold 占位符
 *
 *  @return UIImageView 实例
 */
-(UITextField*)fbd_quickCreateUITextFeildWithFrame:(CGRect)frame withPlaceHold:(NSString*)placeHold;
/**
 *     @author 冯宝东, 16-02-22 14:02:32
 *
 *     快速创建 UITableView
 *
 *     @param frame    位置
 *     @param delegateDataSource 代理和数据源
 *
 *     @return <#return value description#>
 */
-(UITableView*)fbd_quickCreateUITabdWithleViewFrame:(CGRect)frame andDelegateAndDataSource:(id)delegateDataSource;

以及还有对控件的frame的快捷操作API：

#pragma mark  快速获取frame的各个属性
/**
 *  快速获取起点X坐标
 *
 *  @return 起点X坐标
 */
-(CGFloat)view_orignX;
-(void)setView_orignX:(CGFloat)x;
/**
 *  快速获取起点Y坐标
 *
 *  @return 起点Y坐标
 */
-(CGFloat)view_orignY;
-(void)setView_orignY:(CGFloat)y;
/**
 *  快速获取宽度
 *
 *  @return 获取宽度
 */
-(CGFloat)view_sizeWidth;
-(void)setView_sizeWidth:(CGFloat)width;


/**
 *  快速获取高度
 *
 *  @return 获取高度
 */
-(CGFloat)view_sizeHeight;
-(void)setView_sizeHeight:(CGFloat)height;
-(void)setView_addSizeHeightBy:(CGFloat)height;


/**
 *  快速获取     center 的坐标
 *
 *  @return     center 的坐标
 */
-(CGPoint)view_center;
-(void)setView_centerX:(CGFloat)centerX centerY:(CGFloat)centerY;
/**
 *  快速获取center 的 X 坐标
 *
 *  @return center 的 X 坐标
 */
-(CGFloat)view_centerX;
-(void)setView_centerX:(CGFloat)centerX;

/**
 *  快速获取     center 的 Y 坐标
 *
 *  @return     center 的 Y 坐标
 */
-(CGFloat)view_centerY;
-(void)setView_centerY:(CGFloat)centerY;






/**
 *  通过所有子视图的遍历获得自身的高度
 *
 *  @return 自身的高度
 */
-(CGFloat)viewHeightByAllSubView;

/**
 *  快速创建九宫格
 *
 *  @param frame      九宫格的frame
 *  @param H          代表横排有几个Item
 *  @param imageArray 图片数组
 *  @param titleArray 标题数组
 *  @param tSender    tager 绑定
 *
 *  @return 九宫格实例视图
 */

-(UIView*) fbd_quickCreateUIItemNightView:(CGRect)frame withHorizontal:(NSInteger)H wihImageArray:(NSArray*)imageArray withTitleArray:(NSArray*)titleArray withTarget:(id)tSender;

```
## 但是自从苹果6 和 苹果6 plus 出来之后苹果开始推荐使用AutoLayout 来布局UI界面；也有许多第三方开始基于苹果的约束机制封装一些工具类，著名以及常用的就是：Masonry_Xcode6 框架；具体的代码请看Masonry的使用：git 地址：https://github.com/cloudkite/Masonry

# 总结：
### 约束布局确实快而便捷，但是用动画的时候使用UIView的类Block方法动画貌似行不通，非要用BaseAnimation 动画框架；其实Masonry到控件的具体显示最后还是用的Frame，所以这个工具还是有点用的，起码快速改变UI界面还是蛮便捷的，所以结合着用才是王道！