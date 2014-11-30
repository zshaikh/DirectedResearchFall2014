.class public Lcom/nativex/monetization/dialogs/custom/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;
    }
.end annotation


# instance fields
.field private dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

.field private dialogMaxHeight:I

.field private dialogMaxScreenPercentage:F

.field private dialogMaxWidth:I

.field private dialogMinHeight:I

.field private dialogMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 48
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v1, 0x258

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    .line 40
    const/16 v1, 0x190

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I

    .line 41
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    .line 42
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    .line 43
    const v1, 0x3f666666

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxScreenPercentage:F

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->setupDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in BaseDialog(Context)"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dismiss()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v2, -0x2

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    const/16 v1, 0x258

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    .line 40
    const/16 v1, 0x190

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I

    .line 41
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    .line 42
    iput v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    .line 43
    const v1, 0x3f666666

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxScreenPercentage:F

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->setupDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in BaseDialog(Context, int)"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)F
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .prologue
    .line 38
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxScreenPercentage:F

    return v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/dialogs/custom/BaseDialog;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->calcDialogMaxWidthAndHeight(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .prologue
    .line 38
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .prologue
    .line 38
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .prologue
    .line 38
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/nativex/monetization/dialogs/custom/BaseDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/BaseDialog;

    .prologue
    .line 38
    iget v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    return v0
.end method

.method private calcDialogMaxWidthAndHeight(II)V
    .locals 3
    .param p1, "maxHeight"    # I
    .param p2, "maxWidth"    # I

    .prologue
    .line 155
    :try_start_0
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    if-lez v1, :cond_1

    .line 156
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    if-ge p1, v1, :cond_0

    .line 157
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    .line 159
    :cond_0
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    iget v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    if-ge v1, v2, :cond_1

    .line 160
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    .line 164
    :cond_1
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    if-lez v1, :cond_3

    .line 165
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    if-ge p2, v1, :cond_2

    .line 166
    iput p2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    .line 169
    :cond_2
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    iget v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I

    if-ge v1, v2, :cond_3

    .line 170
    iget v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    iput v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_3
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in calcDialogMaxWidthAndHeight()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupDialog()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 70
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->requestWindowFeature(I)Z

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->setCancelable(Z)V

    .line 72
    new-instance v2, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;-><init>(Lcom/nativex/monetization/dialogs/custom/BaseDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    .line 73
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 74
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000

    invoke-static {v2, v3}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    .line 77
    .local v0, "dialogPadding":I
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->setPadding(IIII)V

    .line 78
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {p0, v2, v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in addView(View)"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in addView(View, LayoutParams)"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->release()V

    .line 208
    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->forceLayout()V

    .line 183
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in onOrientationChange()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDialogBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000

    invoke-static {v1, v2}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    .line 197
    .local v0, "dialogPadding":I
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->setPadding(IIII)V

    .line 199
    .end local v0    # "dialogPadding":I
    :cond_0
    return-void
.end method

.method public setDialogMaxHeight(I)V
    .locals 2
    .param p1, "dialogMaxHeight"    # I

    .prologue
    .line 142
    :try_start_0
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxHeight:I

    .line 143
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->forceLayout()V

    .line 144
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in setDialogMaxHeight()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDialogMaxWidth(I)V
    .locals 2
    .param p1, "dialogMaxWidth"    # I

    .prologue
    .line 106
    :try_start_0
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMaxWidth:I

    .line 107
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->forceLayout()V

    .line 108
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in setDialogMaxWidth()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDialogMinHeight(I)V
    .locals 2
    .param p1, "dialogMinHeight"    # I

    .prologue
    .line 130
    :try_start_0
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinHeight:I

    .line 131
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->forceLayout()V

    .line 132
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in setDialogMinHeight()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDialogMinWidth(I)V
    .locals 2
    .param p1, "dialogMinWidth"    # I

    .prologue
    .line 118
    :try_start_0
    iput p1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogMinWidth:I

    .line 119
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->forceLayout()V

    .line 120
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/BaseDialog;->dialogContent:Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/BaseDialog$DialogContent;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseDialog: Unexpected exception caught in setDialogMinWidth()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
