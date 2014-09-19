.class public final enum Lcom/fusepowered/util/FuseChatError;
.super Ljava/lang/Enum;
.source "FuseChatError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseChatError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseChatError;

.field public static final enum FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

.field public static final enum FUSE_CHAT_NOT_CONNECTED:Lcom/fusepowered/util/FuseChatError;

.field public static final enum FUSE_CHAT_REQUEST_FAILED:Lcom/fusepowered/util/FuseChatError;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseChatError;

    const-string v1, "FUSE_CHAT_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseChatError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseChatError;

    const-string v1, "FUSE_CHAT_NOT_CONNECTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseChatError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NOT_CONNECTED:Lcom/fusepowered/util/FuseChatError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseChatError;

    const-string v1, "FUSE_CHAT_REQUEST_FAILED"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseChatError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_REQUEST_FAILED:Lcom/fusepowered/util/FuseChatError;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/util/FuseChatError;

    sget-object v1, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NOT_CONNECTED:Lcom/fusepowered/util/FuseChatError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_REQUEST_FAILED:Lcom/fusepowered/util/FuseChatError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/util/FuseChatError;->$VALUES:[Lcom/fusepowered/util/FuseChatError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/fusepowered/util/FuseChatError;->errorCode:I

    .line 12
    return-void
.end method

.method public static getFuseChatErrorByCode(I)Lcom/fusepowered/util/FuseChatError;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 31
    sget-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NOT_CONNECTED:Lcom/fusepowered/util/FuseChatError;

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_REQUEST_FAILED:Lcom/fusepowered/util/FuseChatError;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseChatError;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseChatError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/FuseChatError;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseChatError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseChatError;->$VALUES:[Lcom/fusepowered/util/FuseChatError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseChatError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseChatError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fusepowered/util/FuseChatError;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 19
    iput p1, p0, Lcom/fusepowered/util/FuseChatError;->errorCode:I

    .line 20
    return-void
.end method
