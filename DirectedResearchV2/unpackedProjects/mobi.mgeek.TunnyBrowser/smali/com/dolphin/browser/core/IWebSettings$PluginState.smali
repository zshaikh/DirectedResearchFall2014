.class public final enum Lcom/dolphin/browser/core/IWebSettings$PluginState;
.super Ljava/lang/Enum;
.source "IWebSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/core/IWebSettings$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

.field public static final enum ON:Lcom/dolphin/browser/core/IWebSettings$PluginState;

.field public static final enum ON_DEMAND:Lcom/dolphin/browser/core/IWebSettings$PluginState;

.field private static final synthetic a:[Lcom/dolphin/browser/core/IWebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/core/IWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;

    const-string v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/core/IWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON_DEMAND:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/core/IWebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/core/IWebSettings$PluginState;

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON_DEMAND:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->a:[Lcom/dolphin/browser/core/IWebSettings$PluginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->a:[Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {v0}, [Lcom/dolphin/browser/core/IWebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/core/IWebSettings$PluginState;

    return-object v0
.end method
