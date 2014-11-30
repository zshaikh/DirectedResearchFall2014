.class public final enum Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/api/APIRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

.field public static final enum GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

.field public static final enum POST:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

.field public static final enum PUT:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

.field private static final synthetic a:[Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->DELETE:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->POST:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->PUT:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->DELETE:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->POST:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->PUT:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->a:[Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->a:[Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    invoke-virtual {v0}, [Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    return-object v0
.end method
