.class public Lcom/dolphin/browser/push/a/b;
.super Lcom/dolphin/browser/push/a/a;
.source "JsonMessageEntity.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/push/a/a;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dolphin/browser/push/a/b;->a:Lorg/json/JSONObject;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/push/a/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method
