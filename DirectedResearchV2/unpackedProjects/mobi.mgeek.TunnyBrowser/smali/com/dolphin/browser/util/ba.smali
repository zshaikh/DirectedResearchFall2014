.class public Lcom/dolphin/browser/util/ba;
.super Ljava/lang/Object;
.source "IconDownloaderImpl.java"

# interfaces
.implements Lcom/dolphin/browser/util/bg;


# static fields
.field private static a:Lcom/dolphin/browser/util/ba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/util/ba;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dolphin/browser/util/ba;->a:Lcom/dolphin/browser/util/ba;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/dolphin/browser/util/ba;

    invoke-direct {v0}, Lcom/dolphin/browser/util/ba;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/ba;->a:Lcom/dolphin/browser/util/ba;

    .line 15
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ba;->a:Lcom/dolphin/browser/util/ba;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;JZ)Z
    .locals 1

    .prologue
    .line 20
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v0

    return v0
.end method
