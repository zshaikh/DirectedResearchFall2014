.class public final enum Lcom/fusepowered/util/FuseEvent;
.super Ljava/lang/Enum;
.source "FuseEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseEvent;

.field public static final enum FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

.field public static final enum FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

.field public static final enum FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseEvent;

    const-string v1, "FUSE_EVENT_OK"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseEvent;

    const-string v1, "FUSE_EVENT_BAD_VAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseEvent;

    const-string v1, "FUSE_EVENT_NULL_PARAMETER"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/util/FuseEvent;

    sget-object v1, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/util/FuseEvent;->$VALUES:[Lcom/fusepowered/util/FuseEvent;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/fusepowered/util/FuseEvent;->errorCode:I

    .line 13
    return-void
.end method

.method public static getFuseEventByCode(I)Lcom/fusepowered/util/FuseEvent;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 32
    sget-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseEvent;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/FuseEvent;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseEvent;->$VALUES:[Lcom/fusepowered/util/FuseEvent;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseEvent;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/fusepowered/util/FuseEvent;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 20
    iput p1, p0, Lcom/fusepowered/util/FuseEvent;->errorCode:I

    .line 21
    return-void
.end method
