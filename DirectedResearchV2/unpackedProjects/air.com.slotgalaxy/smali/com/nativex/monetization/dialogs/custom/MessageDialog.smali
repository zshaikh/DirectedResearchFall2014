.class public Lcom/nativex/monetization/dialogs/custom/MessageDialog;
.super Lcom/nativex/monetization/dialogs/custom/BaseDialog;
.source "MessageDialog.java"


# instance fields
.field private body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

.field private onClose:Landroid/view/View$OnClickListener;

.field private title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

.field private userClickedOk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    .line 37
    new-instance v0, Lcom/nativex/monetization/dialogs/custom/MessageDialog$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog$1;-><init>(Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 52
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    .line 53
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    .line 55
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->addView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->addView(Landroid/view/View;)V

    .line 57
    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setDialogBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000

    invoke-direct {v0, v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 65
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method


# virtual methods
.method public didUserClickOk()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    return v0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dismiss()V

    .line 132
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->release()V

    .line 133
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->release()V

    .line 120
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->release()V

    .line 124
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    .line 126
    :cond_1
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 127
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setButtonText(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-void
.end method

.method public setDialogIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setIcon(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setText(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->body:Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setTextGravity(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setTitle(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setUserClickedOk(Z)V
    .locals 0
    .param p1, "didClick"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->userClickedOk:Z

    .line 138
    return-void
.end method

.method public showDialogIcon(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->title:Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->showIcon(Z)V

    .line 83
    :cond_0
    return-void
.end method
