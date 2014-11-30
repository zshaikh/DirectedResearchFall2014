.class public abstract Lcom/dolphin/browser/javascript/DolphinWebAppHandler;
.super Lcom/dolphin/browser/javascript/h;
.source "DolphinWebAppHandler.java"


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dolphin-browser.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dolphin.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/h;-><init>()V

    .line 45
    sget-object v0, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;->a([Ljava/lang/String;)V

    .line 46
    return-void
.end method
