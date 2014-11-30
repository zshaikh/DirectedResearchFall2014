.class Lcom/android/datetimepicker/time/r;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/l;

.field private b:[I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/datetimepicker/time/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/android/datetimepicker/time/l;[I)V
    .locals 1

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/datetimepicker/time/r;->a:Lcom/android/datetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/android/datetimepicker/time/r;->b:[I

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/r;->c:Ljava/util/ArrayList;

    .line 948
    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/time/r;)V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/datetimepicker/time/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 955
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/datetimepicker/time/r;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 956
    iget-object v2, p0, Lcom/android/datetimepicker/time/r;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 957
    const/4 v1, 0x1

    .line 960
    :cond_0
    return v1

    .line 955
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/android/datetimepicker/time/r;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 964
    iget-object v0, p0, Lcom/android/datetimepicker/time/r;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 972
    :goto_0
    return-object v0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/time/r;

    .line 968
    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/time/r;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 972
    goto :goto_0
.end method
