.class public Lcom/dolphin/player/ae;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/dolphin/player/ae;->c()V

    .line 24
    sget-object v0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/player/ae;->c()V

    .line 56
    sget-object v0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/dolphin/player/ae;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/dolphin/player/ae;->c()V

    .line 49
    sget-object v0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    invoke-static {}, Lcom/dolphin/player/ae;->b()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static b()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/player/ae;->c()V

    .line 35
    sget-object v0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/player/ae;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call WebKitResources.setResources(Resources, String) before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method
