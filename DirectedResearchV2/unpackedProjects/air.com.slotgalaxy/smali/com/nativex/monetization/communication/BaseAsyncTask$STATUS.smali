.class public final enum Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;
.super Ljava/lang/Enum;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/communication/BaseAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

.field public static final enum PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

.field public static final enum RUNNING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 53
    new-instance v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->RUNNING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sget-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->RUNNING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->$VALUES:[Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->$VALUES:[Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    invoke-virtual {v0}, [Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    return-object v0
.end method
