.class public Ldolphin/webkit/a/a/p;
.super Ljava/lang/IllegalStateException;
.source "ASN1ParsingException.java"


# instance fields
.field private a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Ldolphin/webkit/a/a/p;->a:Ljava/lang/Throwable;

    .line 17
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ldolphin/webkit/a/a/p;->a:Ljava/lang/Throwable;

    return-object v0
.end method
