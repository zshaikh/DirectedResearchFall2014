.class public final enum Ldolphin/webkit/WebSettings$PluginState;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/WebSettings$PluginState;",
        ">;"
    }
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldolphin/webkit/WebSettings$PluginState;

.field public static final enum OFF:Ldolphin/webkit/WebSettings$PluginState;

.field public static final enum ON:Ldolphin/webkit/WebSettings$PluginState;

.field public static final enum ON_DEMAND:Ldolphin/webkit/WebSettings$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Ldolphin/webkit/WebSettings$PluginState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$PluginState;->ON:Ldolphin/webkit/WebSettings$PluginState;

    .line 156
    new-instance v0, Ldolphin/webkit/WebSettings$PluginState;

    const-string v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$PluginState;->ON_DEMAND:Ldolphin/webkit/WebSettings$PluginState;

    .line 157
    new-instance v0, Ldolphin/webkit/WebSettings$PluginState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/WebSettings$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$PluginState;->OFF:Ldolphin/webkit/WebSettings$PluginState;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/webkit/WebSettings$PluginState;

    sget-object v1, Ldolphin/webkit/WebSettings$PluginState;->ON:Ldolphin/webkit/WebSettings$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/WebSettings$PluginState;->ON_DEMAND:Ldolphin/webkit/WebSettings$PluginState;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/WebSettings$PluginState;->OFF:Ldolphin/webkit/WebSettings$PluginState;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/WebSettings$PluginState;->$VALUES:[Ldolphin/webkit/WebSettings$PluginState;

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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 153
    const-class v0, Ldolphin/webkit/WebSettings$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebSettings$PluginState;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Ldolphin/webkit/WebSettings$PluginState;->$VALUES:[Ldolphin/webkit/WebSettings$PluginState;

    invoke-virtual {v0}, [Ldolphin/webkit/WebSettings$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/WebSettings$PluginState;

    return-object v0
.end method
