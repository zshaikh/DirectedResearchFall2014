.class public final enum Lcom/fusepowered/util/FuseFriendsListError;
.super Ljava/lang/Enum;
.source "FuseFriendsListError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseFriendsListError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseFriendsListError;

.field public static final enum FUSE_FRIENDS_LIST_NOT_CONNECTED:Lcom/fusepowered/util/FuseFriendsListError;

.field public static final enum FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

.field public static final enum FUSE_FRIENDS_LIST_REQUEST_FAILED:Lcom/fusepowered/util/FuseFriendsListError;

.field public static final enum FUSE_FRIENDS_LIST_SERVER_ERROR:Lcom/fusepowered/util/FuseFriendsListError;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseFriendsListError;

    const-string v1, "FUSE_FRIENDS_LIST_NO_ERROR"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseFriendsListError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseFriendsListError;

    const-string v1, "FUSE_FRIENDS_LIST_SERVER_ERROR"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseFriendsListError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_SERVER_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseFriendsListError;

    const-string v1, "FUSE_FRIENDS_LIST_NOT_CONNECTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseFriendsListError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NOT_CONNECTED:Lcom/fusepowered/util/FuseFriendsListError;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseFriendsListError;

    const-string v1, "FUSE_FRIENDS_LIST_REQUEST_FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/FuseFriendsListError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_REQUEST_FAILED:Lcom/fusepowered/util/FuseFriendsListError;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/util/FuseFriendsListError;

    sget-object v1, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_SERVER_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NOT_CONNECTED:Lcom/fusepowered/util/FuseFriendsListError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_REQUEST_FAILED:Lcom/fusepowered/util/FuseFriendsListError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/util/FuseFriendsListError;->$VALUES:[Lcom/fusepowered/util/FuseFriendsListError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/fusepowered/util/FuseFriendsListError;->errorCode:I

    .line 13
    return-void
.end method

.method public static getFuseFriendsListErrorByCode(I)Lcom/fusepowered/util/FuseFriendsListError;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 34
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_SERVER_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NOT_CONNECTED:Lcom/fusepowered/util/FuseFriendsListError;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_REQUEST_FAILED:Lcom/fusepowered/util/FuseFriendsListError;

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseFriendsListError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseFriendsListError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/FuseFriendsListError;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseFriendsListError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseFriendsListError;->$VALUES:[Lcom/fusepowered/util/FuseFriendsListError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseFriendsListError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseFriendsListError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/fusepowered/util/FuseFriendsListError;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/fusepowered/util/FuseFriendsListError;->errorCode:I

    .line 21
    return-void
.end method
