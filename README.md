# AppleMusic-UIButton-UITextField
A Swift 3 custom UIButton and UITextField with AppleMusic corner radius style (half the height)

AppleMusicButton and AppleMusicTextField: UIView are @IBDesignable classes so they are rendered in your storyboard, and all their properties are @IBInspectable so that you can customize them inside the storyboard in the Attributes inspector.

#Quick install:
* Just drag these classes into your project
* In your storyboard, select a UIButton or UITextField
* Go the the identity inspector and in the class field, type AppleMusicButton/AppleMusicTextField instead of UIButton/UITextField
* Play with the attributes inspector with real-times results!
  * for AppleMusicButton:
    * you can select the color of the shadow
    * you can choose the shadow position (x/y) and its blur
    * you can either set the bool Apple Music Corner Radius to true to have default corner radius (= half the height of the button)
    * either set it to false and customize the corner radius
    * choose a color and a width for the border
  * for AppleMusicTextfield:
    * you can either set the bool Apple Music Corner Radius to true to have default corner radius (= half the height of the button)
    * either set it to false and customize the corner radius
    * choose a padding
    * choose a color and a width for the border
  

![Image of AppleMusicButtonAndTextField](https://github.com/matvdg/AppleMusic-UIButton-UITextField/raw/master/demo.png)
