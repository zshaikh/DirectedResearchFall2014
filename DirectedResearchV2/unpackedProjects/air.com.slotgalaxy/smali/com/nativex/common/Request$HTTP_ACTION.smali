.class public final enum Lcom/nativex/common/Request$HTTP_ACTION;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/common/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTP_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/common/Request$HTTP_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/common/Request$HTTP_ACTION;

.field public static final enum GET:Lcom/nativex/common/Request$HTTP_ACTION;

.field public static final enum HEAD:Lcom/nativex/common/Request$HTTP_ACTION;

.field public static final enum INVALID:Lcom/nativex/common/Request$HTTP_ACTION;

.field public static final enum POST:Lcom/nativex/common/Request$HTTP_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/nativex/common/Request$HTTP_ACTION;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/nativex/common/Request$HTTP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    .line 73
    new-instance v0, Lcom/nativex/common/Request$HTTP_ACTION;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/nativex/common/Request$HTTP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    .line 74
    new-instance v0, Lcom/nativex/common/Request$HTTP_ACTION;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lcom/nativex/common/Request$HTTP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->HEAD:Lcom/nativex/common/Request$HTTP_ACTION;

    .line 75
    new-instance v0, Lcom/nativex/common/Request$HTTP_ACTION;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/nativex/common/Request$HTTP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->INVALID:Lcom/nativex/common/Request$HTTP_ACTION;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nativex/common/Request$HTTP_ACTION;

    sget-object v1, Lcom/nativex/common/Request$HTTP_ACTION;->GET:Lcom/nativex/common/Request$HTTP_ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/common/Request$HTTP_ACTION;->HEAD:Lcom/nativex/common/Request$HTTP_ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/common/Request$HTTP_ACTION;->INVALID:Lcom/nativex/common/Request$HTTP_ACTION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->$VALUES:[Lcom/nativex/common/Request$HTTP_ACTION;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/common/Request$HTTP_ACTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/common/Request$HTTP_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/nativex/common/Request$HTTP_ACTION;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->$VALUES:[Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {v0}, [Lcom/nativex/common/Request$HTTP_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/common/Request$HTTP_ACTION;

    return-object v0
.end method
