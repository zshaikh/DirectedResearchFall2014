.class public Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;
.super Landroid/widget/RelativeLayout;
.source "MessageDialogTitle.java"


# static fields
.field protected static final DEFAULT_CLOSE_BUTTON_SIZE:I = 0x1e

.field protected static final DEFAULT_ICON_SIZE:I = 0x18

.field protected static final DEFAULT_TITLE_TEXT_SIZE:I = 0x10

.field public static final ID_CLOSE:I = 0x108a

.field public static final ID_ICON:I = 0x108c

.field public static final ID_TITLE:I = 0x108b


# instance fields
.field private closeButton:Landroid/widget/ImageView;

.field private icon:Lcom/nativex/monetization/custom/views/CustomImageView;

.field private titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;)Lcom/nativex/monetization/custom/views/CustomImageView;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nativex/monetization/custom/views/ScrollingTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    .line 69
    new-instance v0, Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nativex/monetization/custom/views/CustomImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    .line 71
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    const/16 v1, 0x108b

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setId(I)V

    .line 72
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x108a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 73
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    const/16 v1, 0x108c

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/CustomImageView;->setId(I)V

    .line 75
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->setupViews()V

    .line 79
    return-void
.end method

.method private setupViews()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x5

    const/4 v1, -0x2

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 82
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    const/16 v2, 0x108c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    const/16 v1, 0x108a

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setPadding(IIII)V

    .line 87
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    const/high16 v2, 0x41800000

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setTextSize(F)V

    .line 89
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    sget-object v2, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_TITLE_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setTextColor(I)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x1e

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    invoke-virtual {v0, v4, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v2}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    .line 184
    :cond_1
    iput-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    .line 185
    invoke-virtual {p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->removeAllViews()V

    .line 186
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    new-instance v1, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle$1;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle$1;-><init>(Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;)V

    invoke-virtual {v0, p1, v1}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageFromInternet(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    .line 167
    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FeaturedDialogTitle: Unexpected exception caught in setOnCloseClickListener()."

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FeaturedDialogTitle: Unexpected exception caught in setTitle()."

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showIcon(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0x108a

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 107
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    if-eqz v1, :cond_0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    invoke-virtual {v1, v4}, Lcom/nativex/monetization/custom/views/CustomImageView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    const/16 v2, 0x108c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->icon:Lcom/nativex/monetization/custom/views/CustomImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/CustomImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    iget-object v1, p0, Lcom/nativex/monetization/dialogs/custom/MessageDialogTitle;->titleText:Lcom/nativex/monetization/custom/views/ScrollingTextView;

    invoke-virtual {v1, v0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
