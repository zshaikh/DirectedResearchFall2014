.class public abstract Lcom/mobosquare/sdk/subscription/b/a;
.super Lcom/mobosquare/sdk/subscription/b/d;
.source "JsonWebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mobosquare/sdk/subscription/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/a;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/mobosquare/sdk/subscription/b/d;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static final a(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 94
    invoke-virtual {p0, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 95
    return-void
.end method
