.class public Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;
.super Landroid/widget/LinearLayout;
.source "MessageDialogBody.java"


# static fields
.field public static final ID_BODY_BUTTON:I = 0x424a19

.field public static final ID_BODY_TEXT:I = 0x424a17


# instance fields
.field private button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

.field private scroller:Landroid/widget/ScrollView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 39
    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 46
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/16 v10, 0x46

    const/high16 v9, 0x3f800000

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x5

    .line 50
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    .line 51
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 52
    new-instance v2, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 54
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 55
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->addView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->addView(Landroid/view/View;)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->setOrientation(I)V

    .line 59
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const v3, 0x424a17

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 61
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v1, "textParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 64
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/high16 v3, 0x41800000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v4, -0x40000000

    const/high16 v5, -0x1000000

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 67
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 71
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v2, v3}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v10, v6, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundPressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setBackgroundDepressedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setPressedTextColor(I)V

    .line 81
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setDepressedTextColor(I)V

    .line 82
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setFocusedTextColor(I)V

    .line 83
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v2, v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v2, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    const v3, 0x424a19

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setId(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 138
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->scroller:Landroid/widget/ScrollView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->release()V

    .line 142
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->removeAllViews()V

    .line 145
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->button:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MessageDialogBody: Unexpected exception caught in setText()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V
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
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextColor()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogBody;->text:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
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
    const-string v1, "MessageDialogBody: Unexpected exception caught in setTextSize()"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
