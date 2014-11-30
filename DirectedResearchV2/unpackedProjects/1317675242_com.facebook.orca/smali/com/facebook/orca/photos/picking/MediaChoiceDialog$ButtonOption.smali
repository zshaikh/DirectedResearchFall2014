.class public final enum Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;
.super Ljava/lang/Enum;
.source "MediaChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum RECORD_AUDIO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum RECORD_VIDEO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

.field public static final enum REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;


# instance fields
.field public final buttonId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "CAMERA"

    const v2, 0x7f080084

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 28
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "GALLERY"

    const v2, 0x7f080085

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 29
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "IMAGE_SEARCH"

    const v2, 0x7f080086

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 30
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "RECORD_VIDEO"

    const v2, 0x7f080087

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->RECORD_VIDEO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 31
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "RECORD_AUDIO"

    const v2, 0x7f080088

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->RECORD_AUDIO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 32
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "REMOVE"

    const/4 v2, 0x5

    const v3, 0x7f080089

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 33
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    const-string v1, "CANCEL"

    const/4 v2, 0x6

    const v3, 0x7f08008a

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CAMERA:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->GALLERY:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->IMAGE_SEARCH:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->RECORD_VIDEO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->RECORD_AUDIO:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->$VALUES:[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->buttonId:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->$VALUES:[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0}, [Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    return-object v0
.end method
