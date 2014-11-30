.class public Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;
.super Landroid/widget/LinearLayout;
.source "StorePictureDialogBody.java"


# static fields
.field public static final ID_BODY_BUTTON:I = 0x424a19

.field public static final ID_BODY_IMAGE:I = 0x6c7ae

.field public static final ID_BODY_TEXT:I = 0x424a17


# instance fields
.field private button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

.field private image:Lcom/nativex/monetization/custom/views/CustomImageView;

.field private scrollContainer:Landroid/widget/LinearLayout;

.field private scroller:Landroid/widget/ScrollView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 41
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 42
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    .line 43
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    .line 51
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x5

    .line 55
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    .line 56
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    .line 57
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 58
    new-instance v4, Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nativex/monetization/custom/views/CustomImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    .line 59
    new-instance v4, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 61
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 64
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->addView(Landroid/view/View;)V

    .line 65
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0, v4}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->addView(Landroid/view/View;)V

    .line 67
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {p0, v11}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setOrientation(I)V

    .line 69
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    const v5, 0x424a17

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 70
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    const v5, 0x6c7ae

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/custom/views/CustomImageView;->setId(I)V

    .line 72
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v2, "scrollContainerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v3, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-virtual {v4, v8, v8, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    const/high16 v5, 0x41800000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/high16 v6, -0x40000000

    const/high16 v7, -0x1000000

    invoke-virtual {v4, v12, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 81
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v0, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v4, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 88
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4, v5}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x46

    const/16 v5, 0x46

    invoke-virtual {v1, v4, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setPressedTextColor(I)V

    .line 98
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setDepressedTextColor(I)V

    .line 99
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setFocusedTextColor(I)V

    .line 100
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v4, v1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v4, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    const v5, 0x424a19

    invoke-virtual {v4, v5}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setId(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 148
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->release()V

    .line 152
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->removeAllViews()V

    .line 155
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->image:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setText()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextColor()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->text:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextSize()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
