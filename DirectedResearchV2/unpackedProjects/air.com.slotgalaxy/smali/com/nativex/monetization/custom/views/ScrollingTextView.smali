.class public Lcom/nativex/monetization/custom/views/ScrollingTextView;
.super Landroid/widget/TextView;
.source "ScrollingTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setupView()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setupView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setupView()V

    .line 34
    return-void
.end method

.method private setupView()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setSingleLine()V

    .line 48
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ScrollingTextView;->setMarqueeRepeatLimit(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 67
    :cond_0
    return-void
.end method
