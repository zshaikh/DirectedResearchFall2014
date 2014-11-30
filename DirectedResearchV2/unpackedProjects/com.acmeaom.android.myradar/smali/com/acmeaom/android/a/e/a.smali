.class public Lcom/acmeaom/android/a/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/acmeaom/android/a/e/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/e/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/e/a;->a:Lcom/acmeaom/android/a/e/b;

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/e/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/acmeaom/android/a/e/a;->a:Lcom/acmeaom/android/a/e/b;

    return-object v0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
