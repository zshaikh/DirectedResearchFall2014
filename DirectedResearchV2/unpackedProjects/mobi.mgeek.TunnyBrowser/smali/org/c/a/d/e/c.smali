.class public abstract Lorg/c/a/d/e/c;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/c/a/d/e/c;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/e/c;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method
