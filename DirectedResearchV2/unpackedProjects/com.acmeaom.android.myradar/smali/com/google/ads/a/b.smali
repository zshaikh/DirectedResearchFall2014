.class public Lcom/google/ads/a/b;
.super Lcom/google/ads/c/a/a;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/ads/c/a/a;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/ads/a/b;
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/ads/c/a/a;->c()Lcom/google/ads/c/a/a;

    .line 74
    return-object p0
.end method

.method public synthetic c()Lcom/google/ads/c/a/a;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/ads/a/b;->b()Lcom/google/ads/a/b;

    move-result-object v0

    return-object v0
.end method
