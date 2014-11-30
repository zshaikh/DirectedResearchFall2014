.class public Ldolphin/preference/e;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandablePreferenceGroupAdapter.java"

# interfaces
.implements Ldolphin/preference/q;


# instance fields
.field private a:Ldolphin/preference/PreferenceGroup;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/preference/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/preference/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldolphin/preference/g;

.field private e:Z

.field private f:Z

.field private volatile g:Z

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ldolphin/preference/PreferenceGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 48
    new-instance v0, Ldolphin/preference/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/preference/g;-><init>(Ldolphin/preference/f;)V

    iput-object v0, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    .line 53
    iput-boolean v2, p0, Ldolphin/preference/e;->e:Z

    .line 58
    iput-boolean v2, p0, Ldolphin/preference/e;->f:Z

    .line 61
    iput-boolean v2, p0, Ldolphin/preference/e;->g:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldolphin/preference/e;->h:Landroid/os/Handler;

    .line 65
    new-instance v0, Ldolphin/preference/f;

    invoke-direct {v0, p0}, Ldolphin/preference/f;-><init>(Ldolphin/preference/e;)V

    iput-object v0, p0, Ldolphin/preference/e;->i:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    .line 97
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Ldolphin/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    .line 102
    invoke-direct {p0}, Ldolphin/preference/e;->a()V

    .line 103
    return-void
.end method

.method private a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;
    .locals 1

    .prologue
    .line 164
    if-eqz p2, :cond_0

    .line 165
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ldolphin/preference/g;->a(Ldolphin/preference/g;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getLayoutResource()I

    move-result v0

    invoke-static {p2, v0}, Ldolphin/preference/g;->a(Ldolphin/preference/g;I)I

    .line 167
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getWidgetLayoutResource()I

    move-result v0

    invoke-static {p2, v0}, Ldolphin/preference/g;->b(Ldolphin/preference/g;I)I

    .line 168
    return-object p2

    .line 164
    :cond_0
    new-instance p2, Ldolphin/preference/g;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ldolphin/preference/g;-><init>(Ldolphin/preference/f;)V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Ldolphin/preference/e;->g:Z

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/e;->g:Z

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Ldolphin/preference/e;->a(Ldolphin/preference/PreferenceGroup;)V

    .line 116
    invoke-virtual {p0}, Ldolphin/preference/e;->notifyDataSetChanged()V

    .line 118
    monitor-enter p0

    .line 119
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ldolphin/preference/e;->g:Z

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private a(Ldolphin/preference/PreferenceGroup;)V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p1}, Ldolphin/preference/PreferenceGroup;->f()V

    .line 128
    invoke-virtual {p1}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v3

    .line 129
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 130
    invoke-virtual {p1, v2}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 131
    iget-boolean v0, p0, Ldolphin/preference/e;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, v1}, Ldolphin/preference/e;->c(Ldolphin/preference/Preference;)V

    .line 134
    :cond_0
    instance-of v0, v1, Ldolphin/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 135
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    .line 136
    invoke-direct {p0, v0}, Ldolphin/preference/e;->b(Ldolphin/preference/PreferenceGroup;)V

    .line 138
    :cond_1
    invoke-virtual {v1, p0}, Ldolphin/preference/Preference;->setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V

    .line 129
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method

.method static synthetic a(Ldolphin/preference/e;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ldolphin/preference/e;->a()V

    return-void
.end method

.method private b(Ldolphin/preference/PreferenceGroup;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Ldolphin/preference/PreferenceGroup;->f()V

    .line 147
    invoke-virtual {p1}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v1

    .line 148
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 149
    invoke-virtual {p1, v0}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v2

    .line 150
    iget-boolean v3, p0, Ldolphin/preference/e;->e:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-direct {p0, v2}, Ldolphin/preference/e;->d(Ldolphin/preference/Preference;)V

    .line 153
    :cond_0
    invoke-virtual {v2, p0}, Ldolphin/preference/Preference;->setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method private c(Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v0

    .line 174
    iget-object v1, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 177
    if-gez v1, :cond_0

    .line 179
    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 180
    iget-object v2, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method

.method private d(Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v0

    .line 188
    iget-object v1, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 191
    if-gez v1, :cond_0

    .line 193
    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 194
    iget-object v2, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Ldolphin/preference/Preference;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    .line 248
    instance-of v2, v0, Ldolphin/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 249
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p2}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ldolphin/preference/Preference;)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Ldolphin/preference/e;->notifyDataSetChanged()V

    .line 208
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ldolphin/preference/Preference;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Ldolphin/preference/e;->h:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/preference/e;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Ldolphin/preference/e;->h:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/preference/e;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Ldolphin/preference/e;->a(II)Ldolphin/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 268
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ldolphin/preference/e;->getChildrenCount(I)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 269
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 271
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldolphin/preference/e;->a(II)Ldolphin/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getChildType(II)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 332
    iget-boolean v1, p0, Ldolphin/preference/e;->f:Z

    if-nez v1, :cond_0

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/preference/e;->f:Z

    .line 336
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldolphin/preference/e;->a(II)Ldolphin/preference/Preference;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 341
    :cond_2
    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-direct {p0, v1, v2}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    .line 343
    iget-object v1, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 344
    if-ltz v1, :cond_1

    move v0, v1

    .line 349
    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 357
    iget-boolean v0, p0, Ldolphin/preference/e;->f:Z

    if-nez v0, :cond_0

    .line 358
    iput-boolean v1, p0, Ldolphin/preference/e;->f:Z

    .line 361
    :cond_0
    iget-object v0, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Ldolphin/preference/e;->a(II)Ldolphin/preference/Preference;

    move-result-object v0

    .line 310
    iget-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-direct {p0, v0, v1}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    .line 314
    iget-object v1, p0, Ldolphin/preference/e;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 315
    const/4 p4, 0x0

    .line 318
    :cond_0
    invoke-virtual {v0, p4, p5}, Ldolphin/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 226
    const/4 v1, 0x0

    .line 227
    instance-of v2, v0, Ldolphin/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 228
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    .line 229
    invoke-virtual {v0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Ldolphin/preference/e;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ldolphin/preference/e;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 258
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/e;->getGroupCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 259
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 261
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Ldolphin/preference/e;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getGroupType(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 367
    iget-boolean v1, p0, Ldolphin/preference/e;->e:Z

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/preference/e;->e:Z

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Ldolphin/preference/e;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    :cond_1
    :goto_0
    return v0

    .line 376
    :cond_2
    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-direct {p0, v1, v2}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    .line 378
    iget-object v1, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 379
    if-ltz v1, :cond_1

    move v0, v1

    .line 384
    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    iget-boolean v0, p0, Ldolphin/preference/e;->e:Z

    if-nez v0, :cond_0

    .line 393
    iput-boolean v1, p0, Ldolphin/preference/e;->e:Z

    .line 396
    :cond_0
    iget-object v0, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Ldolphin/preference/e;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 288
    iget-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-direct {p0, v0, v1}, Ldolphin/preference/e;->a(Ldolphin/preference/Preference;Ldolphin/preference/g;)Ldolphin/preference/g;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    .line 292
    iget-object v1, p0, Ldolphin/preference/e;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/e;->d:Ldolphin/preference/g;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 293
    const/4 p3, 0x0

    .line 296
    :cond_0
    instance-of v1, v0, Ldolphin/preference/ExpandablePreferenceCategory;

    if-eqz v1, :cond_1

    .line 297
    check-cast v0, Ldolphin/preference/ExpandablePreferenceCategory;

    invoke-virtual {v0, p3, p4, p2}, Ldolphin/preference/ExpandablePreferenceCategory;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p3, p4}, Ldolphin/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Ldolphin/preference/e;->a(II)Ldolphin/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/Preference;->isSelectable()Z

    move-result v0

    return v0
.end method
