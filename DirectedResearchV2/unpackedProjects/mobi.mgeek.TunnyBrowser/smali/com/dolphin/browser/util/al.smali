.class public Lcom/dolphin/browser/util/al;
.super Ljava/lang/Object;
.source "BrowserUtil.java"


# static fields
.field public static final d:Lcom/dolphin/browser/util/al;


# instance fields
.field e:Ljava/lang/String;

.field f:I

.field g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/dolphin/browser/util/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/util/al;->d:Lcom/dolphin/browser/util/al;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    .line 186
    iput p2, p0, Lcom/dolphin/browser/util/al;->f:I

    .line 187
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/util/al;->g:[B

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/util/al;->g:[B

    invoke-interface {p1, v0, v1}, Lcom/dolphin/browser/core/IWebView;->postUrl(Ljava/lang/String;[B)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/dolphin/browser/util/al;->g:[B

    .line 191
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/util/al;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/dolphin/browser/util/al;->f:I

    return v0
.end method
