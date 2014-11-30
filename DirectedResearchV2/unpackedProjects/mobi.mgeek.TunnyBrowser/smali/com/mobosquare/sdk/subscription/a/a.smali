.class public Lcom/mobosquare/sdk/subscription/a/a;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p2}, Lcom/mobosquare/sdk/subscription/c/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/a/a;->b:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/mobosquare/sdk/subscription/a/a;->a:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/mobosquare/sdk/subscription/a/a;->c:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/mobosquare/sdk/subscription/a/a;->d:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a/a;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
