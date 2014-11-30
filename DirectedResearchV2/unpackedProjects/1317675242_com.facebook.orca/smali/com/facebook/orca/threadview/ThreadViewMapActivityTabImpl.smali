.class public Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;
.super Lcom/facebook/orca/activity/OrcaMapActivity;
.source "ThreadViewMapActivityTabImpl.java"

# interfaces
.implements Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;


# instance fields
.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/app/OrcaAppType;

.field private d:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/google/android/maps/MapView;

.field private m:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

.field private o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

.field private p:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaMapActivity;-><init>()V

    .line 335
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;)",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;"
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 224
    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    move v4, v1

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/GeoPoint;

    .line 230
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ge v3, v5, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 239
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    :cond_1
    move v5, v3

    move v3, v1

    goto :goto_0

    .line 244
    :cond_2
    add-int v0, v3, v2

    div-int/lit8 v6, v0, 0x2

    .line 245
    add-int v0, v5, v4

    div-int/lit8 v7, v0, 0x2

    .line 247
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;-><init>(Lcom/google/android/maps/GeoPoint;IIII)V

    return-object v0

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/OverlayItem;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Lcom/google/android/maps/OverlayItem;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/OverlayItem;)V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 371
    if-nez p1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    :goto_0
    return-void

    .line 375
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    move-object v1, v0

    .line 376
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a()Ljava/lang/String;

    move-result-object v2

    .line 377
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserId(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_1

    .line 383
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaMapActivity;->a(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->setContentView(I)V

    .line 78
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v11, 0x412e848000000000L

    .line 159
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 160
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 161
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->g()Lcom/facebook/orca/location/Coordinates;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 166
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 173
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 174
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/threads/Message;

    .line 177
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->g()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 178
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v1, v3

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 180
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->e()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 181
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/GeoPoint;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;)V

    .line 187
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->a(Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a(Ljava/util/List;)V

    .line 194
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 195
    invoke-direct {p0, v8}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 197
    iget-object v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->a:Lcom/google/android/maps/GeoPoint;

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 200
    iget v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->b:I

    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->c:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 201
    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->d:I

    iget v0, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->e:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 202
    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/facebook/orca/threadview/ZoomOverlay;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadview/ZoomOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 215
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 82
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaMapActivity;->b(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 87
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/cache/DataCache;

    .line 88
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 89
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 90
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 92
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Landroid/widget/FrameLayout;

    .line 93
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 95
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    const v2, 0x7f020058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V

    .line 108
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    .line 112
    new-instance v0, Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->getMapApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/google/android/maps/MyLocationOverlay;

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Lcom/google/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 122
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->i()V

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaMapActivity;->onDestroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 130
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaMapActivity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaMapActivity;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 138
    :cond_0
    return-void
.end method
