.class public final enum Lcom/nativex/monetization/enums/FileStatus;
.super Ljava/lang/Enum;
.source "FileStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/FileStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

.field public static final enum STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_PENDING"

    const-string v2, "Pending"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    .line 6
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_DOWNLOADING"

    const-string v2, "Downloading"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    .line 7
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_PAUSED"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    .line 8
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_INUSE"

    const-string v2, "InUse"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    .line 9
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_FAILED"

    const-string v2, "Failed"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

    .line 10
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_READY"

    const/4 v2, 0x5

    const-string v3, "Ready"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    .line 11
    new-instance v0, Lcom/nativex/monetization/enums/FileStatus;

    const-string v1, "STATUS_DELETED"

    const/4 v2, 0x6

    const-string v3, "Deleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nativex/monetization/enums/FileStatus;

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/enums/FileStatus;->$VALUES:[Lcom/nativex/monetization/enums/FileStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/nativex/monetization/enums/FileStatus;->status:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nativex/monetization/enums/FileStatus;
    .locals 5
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p0, :cond_1

    .line 25
    invoke-static {}, Lcom/nativex/monetization/enums/FileStatus;->values()[Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    .local v0, "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 26
    .local v3, "s":Lcom/nativex/monetization/enums/FileStatus;
    invoke-virtual {v3}, Lcom/nativex/monetization/enums/FileStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 31
    .end local v0    # "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Lcom/nativex/monetization/enums/FileStatus;
    :goto_1
    return-object v4

    .line 25
    .restart local v0    # "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "s":Lcom/nativex/monetization/enums/FileStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Lcom/nativex/monetization/enums/FileStatus;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/FileStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nativex/monetization/enums/FileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/FileStatus;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/FileStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nativex/monetization/enums/FileStatus;->$VALUES:[Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/FileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/FileStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nativex/monetization/enums/FileStatus;->status:Ljava/lang/String;

    return-object v0
.end method
