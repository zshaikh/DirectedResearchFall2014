.class public Lorg/d/d/b;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# static fields
.field public static final a:Lorg/d/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/d/d/i;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/d/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/d/d/b;->a:Lorg/d/d/i;

    return-void
.end method
