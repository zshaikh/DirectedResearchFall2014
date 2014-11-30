.class Lcom/dolphin/browser/q/d/am;
.super Lcom/dolphin/browser/util/f;
.source "TwitterWebServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Lcom/dolphin/browser/q/d/d;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/ak;

.field private final b:Lcom/dolphin/browser/share/g;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/d/ak;Lcom/dolphin/browser/share/g;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/dolphin/browser/q/d/am;->a:Lcom/dolphin/browser/q/d/ak;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    .line 293
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/dolphin/browser/q/d/d;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 306
    invoke-interface {v0}, Lcom/dolphin/browser/q/d/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/q/d/am;->a:Lcom/dolphin/browser/q/d/ak;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/ak;->a(Lcom/dolphin/browser/q/d/ak;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v1

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/q/d/am;->a:Lcom/dolphin/browser/q/d/ak;

    invoke-static {v2}, Lcom/dolphin/browser/q/d/ak;->b(Lcom/dolphin/browser/q/d/ak;)Lcom/dolphin/browser/q/d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/q/d/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    check-cast p1, [Lcom/dolphin/browser/q/d/d;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/d/am;->a([Lcom/dolphin/browser/q/d/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    invoke-interface {v0}, Lcom/dolphin/browser/share/g;->a()V

    .line 300
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/am;->b:Lcom/dolphin/browser/share/g;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    const-string v2, "failed"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
