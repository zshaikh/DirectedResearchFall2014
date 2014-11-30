.class public Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;
.super Lcom/nativex/monetization/dialogs/custom/BaseDialog;
.source "StorePictureDialog.java"


# instance fields
.field private body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

.field private onClose:Landroid/view/View$OnClickListener;

.field private title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

.field private userButtonListener:Landroid/view/View$OnClickListener;

.field private userCloseListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog$1;-><init>(Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 63
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    .line 64
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    .line 66
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->addView(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->addView(Landroid/view/View;)V

    .line 68
    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 76
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    const-string v2, "Confirm storing picture"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    const-string v2, "You are requested to store a picture on the device\' SDCard. Do you wish to proceed?"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setText(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    const-string v2, "Proceed"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dismiss()V

    .line 103
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 104
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->body:Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/StorePictureDialogBody;->setImage(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->userButtonListener:Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/StorePictureDialog;->userCloseListener:Landroid/view/View$OnClickListener;

    .line 98
    return-void
.end method
