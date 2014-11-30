.class public Lcom/nativex/common/UDIDs$UDID;
.super Ljava/lang/Object;
.source "UDIDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/common/UDIDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UDID"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/common/UDIDs;

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nativex/common/UDIDs;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nativex/common/UDIDs$UDID;->this$0:Lcom/nativex/common/UDIDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/nativex/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/common/UDIDs$UDID;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nativex/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/common/UDIDs$UDID;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 94
    instance-of v2, p1, Lcom/nativex/common/UDIDs$UDID;

    if-eqz v2, :cond_2

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/nativex/common/UDIDs$UDID;

    move-object v1, v0

    .line 96
    .local v1, "udid":Lcom/nativex/common/UDIDs$UDID;
    iget-object v2, v1, Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 104
    .end local v1    # "udid":Lcom/nativex/common/UDIDs$UDID;
    :goto_0
    return v2

    .line 99
    .restart local v1    # "udid":Lcom/nativex/common/UDIDs$UDID;
    :cond_0
    iget-object v2, v1, Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "udid":Lcom/nativex/common/UDIDs$UDID;
    :cond_2
    move v2, v4

    .line 104
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;

    .line 89
    return-void
.end method
