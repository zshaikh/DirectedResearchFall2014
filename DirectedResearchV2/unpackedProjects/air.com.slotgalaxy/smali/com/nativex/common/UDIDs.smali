.class public Lcom/nativex/common/UDIDs;
.super Ljava/util/ArrayList;
.source "UDIDs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/UDIDs$UDID;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nativex/common/UDIDs$UDID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public addUDID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .line 39
    new-instance v0, Lcom/nativex/common/UDIDs$UDID;

    invoke-direct {v0, p0}, Lcom/nativex/common/UDIDs$UDID;-><init>(Lcom/nativex/common/UDIDs;)V

    .line 40
    .local v0, "udid":Lcom/nativex/common/UDIDs$UDID;
    # setter for: Lcom/nativex/common/UDIDs$UDID;->type:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nativex/common/UDIDs$UDID;->access$002(Lcom/nativex/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    # setter for: Lcom/nativex/common/UDIDs$UDID;->value:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/nativex/common/UDIDs$UDID;->access$102(Lcom/nativex/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/nativex/common/UDIDs;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v0    # "udid":Lcom/nativex/common/UDIDs$UDID;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 49
    instance-of v3, p1, Lcom/nativex/common/UDIDs;

    if-eqz v3, :cond_3

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/nativex/common/UDIDs;

    move-object v2, v0

    .line 51
    .local v2, "udid":Lcom/nativex/common/UDIDs;
    invoke-virtual {v2}, Lcom/nativex/common/UDIDs;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/nativex/common/UDIDs;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v3, v5

    .line 62
    .end local v2    # "udid":Lcom/nativex/common/UDIDs;
    :goto_0
    return v3

    .line 55
    .restart local v2    # "udid":Lcom/nativex/common/UDIDs;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/nativex/common/UDIDs;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 56
    invoke-virtual {v2, v1}, Lcom/nativex/common/UDIDs;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nativex/common/UDIDs$UDID;

    invoke-virtual {p0, v1}, Lcom/nativex/common/UDIDs;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/common/UDIDs$UDID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 57
    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "udid":Lcom/nativex/common/UDIDs;
    :cond_3
    move v3, v5

    .line 62
    goto :goto_0
.end method
