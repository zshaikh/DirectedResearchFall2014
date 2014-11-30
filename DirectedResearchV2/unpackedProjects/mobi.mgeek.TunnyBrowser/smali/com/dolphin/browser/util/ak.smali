.class Lcom/dolphin/browser/util/ak;
.super Lcom/dolphin/browser/util/al;
.source "BrowserUtil.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p4}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/dolphin/browser/util/ak;->b:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/dolphin/browser/util/ak;->a:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/dolphin/browser/util/ak;->c:Ljava/lang/String;

    .line 222
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 6

    .prologue
    .line 235
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/util/ak;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/util/ak;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/util/ak;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/util/ak;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/util/ak;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/util/ak;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
