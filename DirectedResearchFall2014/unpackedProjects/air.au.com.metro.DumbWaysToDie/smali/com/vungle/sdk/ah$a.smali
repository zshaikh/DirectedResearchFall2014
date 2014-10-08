.class public final enum Lcom/vungle/sdk/ah$a;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/sdk/ah$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/sdk/ah$a;

.field public static final enum b:Lcom/vungle/sdk/ah$a;

.field public static final enum c:Lcom/vungle/sdk/ah$a;

.field private static final synthetic d:[Lcom/vungle/sdk/ah$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/vungle/sdk/ah$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/vungle/sdk/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/sdk/ah$a;->a:Lcom/vungle/sdk/ah$a;

    .line 27
    new-instance v0, Lcom/vungle/sdk/ah$a;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v3}, Lcom/vungle/sdk/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/sdk/ah$a;->b:Lcom/vungle/sdk/ah$a;

    .line 28
    new-instance v0, Lcom/vungle/sdk/ah$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/vungle/sdk/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/sdk/ah$a;->c:Lcom/vungle/sdk/ah$a;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/sdk/ah$a;

    sget-object v1, Lcom/vungle/sdk/ah$a;->a:Lcom/vungle/sdk/ah$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/sdk/ah$a;->b:Lcom/vungle/sdk/ah$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/sdk/ah$a;->c:Lcom/vungle/sdk/ah$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/sdk/ah$a;->d:[Lcom/vungle/sdk/ah$a;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/sdk/ah$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/vungle/sdk/ah$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/vungle/sdk/ah$a;

    return-object p0
.end method

.method public static values()[Lcom/vungle/sdk/ah$a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/vungle/sdk/ah$a;->d:[Lcom/vungle/sdk/ah$a;

    invoke-virtual {v0}, [Lcom/vungle/sdk/ah$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/sdk/ah$a;

    return-object v0
.end method
