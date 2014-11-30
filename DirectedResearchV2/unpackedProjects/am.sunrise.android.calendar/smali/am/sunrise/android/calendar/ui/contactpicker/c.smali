.class Lam/sunrise/android/calendar/ui/contactpicker/c;
.super Landroid/widget/Filter;
.source "ContactPickerAdapter.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/a;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/a;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/a;Lam/sunrise/android/calendar/ui/contactpicker/b;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/c;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/a;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->b(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 271
    :try_start_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->c(Lam/sunrise/android/calendar/ui/contactpicker/a;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v3, v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Lam/sunrise/android/calendar/ui/contactpicker/a;Ljava/util/List;)Ljava/util/List;

    .line 273
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->b(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 278
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 282
    return-object v1

    .line 271
    :cond_1
    :try_start_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->c(Lam/sunrise/android/calendar/ui/contactpicker/a;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 279
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 288
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 289
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    new-array v2, v2, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Lam/sunrise/android/calendar/ui/contactpicker/a;[Lam/sunrise/android/calendar/api/models/datas/Contact;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 290
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->notifyDataSetChanged()V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a(Lam/sunrise/android/calendar/ui/contactpicker/a;[Lam/sunrise/android/calendar/api/models/datas/Contact;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 293
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/c;->a:Lam/sunrise/android/calendar/ui/contactpicker/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
