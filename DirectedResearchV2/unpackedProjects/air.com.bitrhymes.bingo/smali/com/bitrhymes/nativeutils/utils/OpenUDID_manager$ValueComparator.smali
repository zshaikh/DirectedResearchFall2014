.class Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;


# direct methods
.method private constructor <init>(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;->this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;-><init>(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;->this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    # getter for: Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->access$0(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;->this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    # getter for: Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->access$0(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;->this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    # getter for: Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->access$0(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;->this$0:Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    # getter for: Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v1}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->access$0(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 239
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
