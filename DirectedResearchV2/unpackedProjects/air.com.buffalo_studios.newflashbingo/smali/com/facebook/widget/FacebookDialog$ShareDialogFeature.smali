.class public final enum Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;",
        ">;",
        "Lcom/facebook/widget/FacebookDialog$DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

.field public static final enum SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const-string v1, "SHARE_DIALOG"

    const v2, 0x1332b3a

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    sget-object v1, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;
    .locals 1

    const-class v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;
    .locals 1

    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->$VALUES:[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public final getMinVersion()I
    .locals 1

    iget v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->minVersion:I

    return v0
.end method
