.class public abstract Lcom/dolphin/browser/util/ax;
.super Ljava/lang/Object;
.source "GoogleTrackerBase.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/ax;


# instance fields
.field private b:Lcom/dolphin/browser/util/cs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/dolphin/browser/util/cs;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/util/ax;->b:Lcom/dolphin/browser/util/cs;

    .line 26
    return-void
.end method

.method public static a(Lcom/dolphin/browser/util/cs;Lcom/dolphin/browser/util/ax;)V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    if-nez v0, :cond_0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    sput-object p1, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    .line 20
    :goto_0
    sget-object v0, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/ax;->a(Lcom/dolphin/browser/util/cs;)V

    .line 22
    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance v0, Lcom/dolphin/browser/util/ay;

    invoke-direct {v0}, Lcom/dolphin/browser/util/ay;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    goto :goto_0
.end method

.method public static b()Lcom/dolphin/browser/util/ax;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance should be initialzed first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ax;->a:Lcom/dolphin/browser/util/ax;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/dolphin/browser/util/cs;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/util/ax;->b:Lcom/dolphin/browser/util/cs;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public abstract d()Z
.end method
