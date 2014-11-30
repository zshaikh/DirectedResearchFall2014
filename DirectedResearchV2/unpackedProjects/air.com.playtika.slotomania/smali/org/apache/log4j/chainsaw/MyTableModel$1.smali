.class final Lorg/apache/log4j/chainsaw/MyTableModel$1;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .param p1, "aObj1"    # Ljava/lang/Object;
    .param p2, "aObj2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 49
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 50
    const/4 v3, 0x0

    .line 65
    :goto_0
    return v3

    .line 51
    :cond_0
    if-nez p1, :cond_1

    move v3, v7

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-nez p2, :cond_2

    move v3, v8

    .line 54
    goto :goto_0

    .line 58
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    move-object v1, v0

    .line 59
    .local v1, "le1":Lorg/apache/log4j/chainsaw/EventDetails;
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    move-object v2, v0

    .line 61
    .local v2, "le2":Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v3, v8

    .line 62
    goto :goto_0

    :cond_3
    move v3, v7

    .line 65
    goto :goto_0
.end method
