.class public Lcom/mobosquare/sdk/subscription/b/c;
.super Lcom/mobosquare/sdk/subscription/b/f;
.source "MoboTapWebServiceClient.java"


# instance fields
.field private final a:Lcom/mobosquare/sdk/subscription/b/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/mobosquare/sdk/subscription/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p4}, Lcom/mobosquare/sdk/subscription/b/f;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v0, "api"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "api"

    aput-object v1, v0, v2

    aput-object p6, v0, v3

    invoke-super {p0, v0}, Lcom/mobosquare/sdk/subscription/b/f;->a([Ljava/lang/Object;)V

    .line 81
    :goto_0
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/b/c;->a:Lcom/mobosquare/sdk/subscription/b/b;

    .line 82
    iput-object p2, p0, Lcom/mobosquare/sdk/subscription/b/c;->b:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/mobosquare/sdk/subscription/b/c;->c:Ljava/lang/String;

    .line 84
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "services"

    aput-object v1, v0, v2

    aput-object p5, v0, v3

    aput-object p6, v0, v4

    invoke-super {p0, v0}, Lcom/mobosquare/sdk/subscription/b/f;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 98
    iget-object v3, p0, Lcom/mobosquare/sdk/subscription/b/c;->a:Lcom/mobosquare/sdk/subscription/b/b;

    .line 99
    iget-object v4, p0, Lcom/mobosquare/sdk/subscription/b/c;->c:Ljava/lang/String;

    invoke-static {v0, v4, v1, v2}, Lcom/mobosquare/sdk/subscription/b/b;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v4, "apikey"

    iget-object v5, p0, Lcom/mobosquare/sdk/subscription/b/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/mobosquare/sdk/subscription/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v4, "t"

    invoke-virtual {p0, v4, v1, v2}, Lcom/mobosquare/sdk/subscription/b/c;->a(Ljava/lang/String;J)V

    .line 102
    invoke-super {p0}, Lcom/mobosquare/sdk/subscription/b/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v3, v1, v0}, Lcom/mobosquare/sdk/subscription/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v1
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/b/c;->b([Ljava/lang/Object;)V

    .line 113
    return-void
.end method
