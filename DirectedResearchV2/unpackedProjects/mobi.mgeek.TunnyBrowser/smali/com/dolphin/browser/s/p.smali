.class public Lcom/dolphin/browser/s/p;
.super Ljava/lang/Object;
.source "SparkSettings.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "enable_share_task"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/s/p;->a:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/dolphin/browser/s/p;->a:Z

    return v0
.end method
