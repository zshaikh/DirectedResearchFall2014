.class final Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/org/codehaus/jackson/map/util/Comparators;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Object;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    iput p2, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    if-ne p1, p0, :cond_0

    move v3, v6

    .line 44
    :goto_0
    return v3

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    move v3, v5

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$length:I

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    .line 34
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$length:I

    if-ge v0, v3, :cond_6

    .line 35
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, value1:Ljava/lang/Object;
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, value2:Ljava/lang/Object;
    if-ne v1, v2, :cond_5

    .line 34
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_5
    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 40
    goto :goto_0

    .end local v1           #value1:Ljava/lang/Object;
    .end local v2           #value2:Ljava/lang/Object;
    :cond_6
    move v3, v6

    .line 44
    goto :goto_0
.end method
