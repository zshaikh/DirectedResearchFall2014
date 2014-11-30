.class public Lcom/google/ads/c/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/ads/c/j;


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/c/a/a;->a:Z

    .line 22
    invoke-virtual {p0}, Lcom/google/ads/c/a/a;->c()Lcom/google/ads/c/a/a;

    .line 23
    return-void
.end method


# virtual methods
.method public c()Lcom/google/ads/c/a/a;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/c/a/a;->b:Ljava/util/Map;

    .line 116
    return-object p0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/ads/c/a/a;->b:Ljava/util/Map;

    return-object v0
.end method
