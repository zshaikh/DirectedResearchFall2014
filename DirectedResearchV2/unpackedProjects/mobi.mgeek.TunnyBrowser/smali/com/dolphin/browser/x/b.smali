.class public Lcom/dolphin/browser/x/b;
.super Ljava/lang/Object;
.source "NullContentProxy.java"

# interfaces
.implements Lcom/dolphin/browser/x/c;


# static fields
.field private static a:Lcom/dolphin/browser/x/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/x/b;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dolphin/browser/x/b;->a:Lcom/dolphin/browser/x/b;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/dolphin/browser/x/b;

    invoke-direct {v0}, Lcom/dolphin/browser/x/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/x/b;->a:Lcom/dolphin/browser/x/b;

    .line 13
    :cond_0
    sget-object v0, Lcom/dolphin/browser/x/b;->a:Lcom/dolphin/browser/x/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    return-object v0
.end method
