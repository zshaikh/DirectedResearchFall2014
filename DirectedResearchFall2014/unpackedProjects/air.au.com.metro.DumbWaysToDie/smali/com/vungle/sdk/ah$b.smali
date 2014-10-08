.class public final enum Lcom/vungle/sdk/ah$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/sdk/ah$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/sdk/ah$b;

.field public static final enum b:Lcom/vungle/sdk/ah$b;

.field private static final synthetic c:[Lcom/vungle/sdk/ah$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/vungle/sdk/ah$b;

    const-string v1, "eventTracking"

    invoke-direct {v0, v1, v2}, Lcom/vungle/sdk/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/sdk/ah$b;->a:Lcom/vungle/sdk/ah$b;

    .line 22
    new-instance v0, Lcom/vungle/sdk/ah$b;

    const-string v1, "requestAd"

    invoke-direct {v0, v1, v3}, Lcom/vungle/sdk/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/sdk/ah$b;->b:Lcom/vungle/sdk/ah$b;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/sdk/ah$b;

    sget-object v1, Lcom/vungle/sdk/ah$b;->a:Lcom/vungle/sdk/ah$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/sdk/ah$b;->b:Lcom/vungle/sdk/ah$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/ah$b;->c:[Lcom/vungle/sdk/ah$b;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/sdk/ah$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/vungle/sdk/ah$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/vungle/sdk/ah$b;

    return-object p0
.end method

.method public static values()[Lcom/vungle/sdk/ah$b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/sdk/ah$b;->c:[Lcom/vungle/sdk/ah$b;

    invoke-virtual {v0}, [Lcom/vungle/sdk/ah$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/sdk/ah$b;

    return-object v0
.end method
