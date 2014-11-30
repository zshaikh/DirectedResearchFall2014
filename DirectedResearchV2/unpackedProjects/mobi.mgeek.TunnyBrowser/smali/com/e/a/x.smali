.class Lcom/e/a/x;
.super Ljava/lang/Object;
.source "DrawableHelper.java"

# interfaces
.implements Lcom/e/a/w;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/e/a/v;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/e/a/v;->a(Landroid/content/res/Resources;Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/e/a/v;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/e/a/x;->b:Lcom/e/a/v;

    .line 59
    return-void
.end method

.method public b(ILandroid/util/TypedValue;Z)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/e/a/x;->b:Lcom/e/a/v;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/e/a/v;->a(Lcom/e/a/v;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/e/a/x;->a:Landroid/content/res/Resources;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 64
    return-void
.end method
