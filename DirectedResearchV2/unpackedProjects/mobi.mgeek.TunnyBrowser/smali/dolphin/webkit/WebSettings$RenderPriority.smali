.class public final enum Ldolphin/webkit/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldolphin/webkit/WebSettings$RenderPriority;

.field public static final enum HIGH:Ldolphin/webkit/WebSettings$RenderPriority;

.field public static final enum LOW:Ldolphin/webkit/WebSettings$RenderPriority;

.field public static final enum NORMAL:Ldolphin/webkit/WebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Ldolphin/webkit/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->NORMAL:Ldolphin/webkit/WebSettings$RenderPriority;

    .line 140
    new-instance v0, Ldolphin/webkit/WebSettings$RenderPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->HIGH:Ldolphin/webkit/WebSettings$RenderPriority;

    .line 141
    new-instance v0, Ldolphin/webkit/WebSettings$RenderPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->LOW:Ldolphin/webkit/WebSettings$RenderPriority;

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/webkit/WebSettings$RenderPriority;

    sget-object v1, Ldolphin/webkit/WebSettings$RenderPriority;->NORMAL:Ldolphin/webkit/WebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/WebSettings$RenderPriority;->HIGH:Ldolphin/webkit/WebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/WebSettings$RenderPriority;->LOW:Ldolphin/webkit/WebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->$VALUES:[Ldolphin/webkit/WebSettings$RenderPriority;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 137
    const-class v0, Ldolphin/webkit/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->$VALUES:[Ldolphin/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0}, [Ldolphin/webkit/WebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/WebSettings$RenderPriority;

    return-object v0
.end method
