.class public Lam/sunrise/android/calendar/sync/a;
.super Ljava/lang/Object;
.source "Feeder.java"


# direct methods
.method public static a(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 464
    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    aget-object v0, v0, v5

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/PersonProfile;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const-string v0, "person_facebook_id"

    iget-object v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->profiles:[Lam/sunrise/android/calendar/api/models/datas/PersonProfile;

    aget-object v3, v3, v5

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/PersonProfile;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 468
    :cond_0
    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    if-eqz v0, :cond_1

    .line 470
    const-string v0, "person_thumbnail_url"

    iget-object v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 472
    :cond_1
    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->cover:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;

    if-eqz v0, :cond_2

    .line 473
    const-string v0, "person_cover_url"

    iget-object v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->cover:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 474
    const-string v0, "person_cover_offset_y"

    iget-object v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->cover:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;

    iget v3, v3, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;->offsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 478
    :cond_2
    const-string v0, "person_name"

    iget-object v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "person_firstname"

    iget-object v4, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "person_lastname"

    iget-object v4, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "person_email_1"

    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    aget-object v0, v0, v5

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "person_email_2"

    iget-object v4, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v6, :cond_3

    iget-object v1, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->emails:[Ljava/lang/String;

    aget-object v1, v1, v6

    :cond_3
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "person_is_self"

    iget-boolean v3, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->isSelf:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "person_birthday"

    invoke-virtual {p3, v2}, Lam/sunrise/android/calendar/api/models/datas/Person;->getBirthdayTimeStampUTC(Lam/sunrise/android/calendar/b/e;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 489
    const-string v0, "person_calendar_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "person_event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "person_rsvp_status"

    iget-object v2, p3, Lam/sunrise/android/calendar/api/models/datas/Person;->rsvpStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 493
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    .line 478
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 427
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/provider/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Place;)Landroid/content/ContentProviderOperation;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 497
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    .line 498
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    .line 499
    iget-object v2, p2, Lam/sunrise/android/calendar/api/models/datas/Place;->viewport:Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;

    .line 501
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/provider/i;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 505
    const-string v4, "location_name"

    iget-object v5, p2, Lam/sunrise/android/calendar/api/models/datas/Place;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 506
    if-nez v0, :cond_3

    .line 507
    const-string v0, "location_city"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "location_street"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "location_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "location_country"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 517
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_4

    .line 518
    :cond_0
    const-string v0, "location_latitude"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_longitude"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 524
    :goto_1
    if-eqz v2, :cond_1

    iget-object v0, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_5

    .line 525
    :cond_1
    const-string v0, "location_viewport_nelat"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelng"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 531
    :goto_2
    if-eqz v2, :cond_2

    iget-object v0, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    if-nez v0, :cond_6

    .line 532
    :cond_2
    const-string v0, "location_viewport_swlat"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlng"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 539
    :goto_3
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    .line 512
    :cond_3
    const-string v4, "location_city"

    iget-object v5, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->city:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "location_street"

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->street:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "location_state"

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->state:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "location_country"

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->country:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 521
    :cond_4
    const-string v0, "location_latitude"

    iget-object v4, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "location_longitude"

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v5, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 528
    :cond_5
    const-string v0, "location_viewport_nelat"

    iget-object v1, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelng"

    iget-object v4, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->northeast:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v4, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 535
    :cond_6
    const-string v0, "location_viewport_swlat"

    iget-object v1, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlng"

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;->southwest:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-wide v4, v2, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3
.end method

.method public static a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/b/e;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;->id:Ljava/lang/String;

    invoke-static {p1, v1}, Lam/sunrise/android/calendar/provider/i;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_recurrence_exceptions"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cancelled"

    iget-object v2, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-static {p1, v1}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Lam/sunrise/android/calendar/api/models/datas/Calendar;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Lam/sunrise/android/calendar/api/models/datas/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-static {p2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 265
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v8, v7

    .line 209
    :goto_1
    if-eqz v8, :cond_3

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    :goto_2
    move v2, v3

    .line 215
    :goto_3
    array-length v0, p2

    if-ge v2, v0, :cond_8

    move v4, v3

    .line 217
    :goto_4
    if-eqz v8, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 218
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v5, p2, v2

    iget-object v5, v5, Lam/sunrise/android/calendar/api/models/datas/Calendar;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 222
    aget-object v0, p2, v2

    .line 223
    iget-object v4, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->id:Ljava/lang/String;

    invoke-static {v4}, Lam/sunrise/android/calendar/provider/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_type"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_title"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_description"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->description:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_color"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->color:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_is_writable"

    iget-boolean v0, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar;->isWritable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v7

    .line 235
    :goto_5
    if-nez v0, :cond_1

    .line 237
    aget-object v9, p2, v2

    .line 238
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_id"

    iget-object v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_type"

    iget-object v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_title"

    iget-object v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_description"

    iget-object v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->description:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_color"

    iget-object v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->color:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v4, "calendar_is_writable"

    iget-boolean v5, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->isWritable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_is_enabled"

    iget-object v0, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    if-nez v0, :cond_5

    move v0, v3

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v10, "calendar_priority"

    iget-object v4, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    if-nez v4, :cond_6

    const-wide/16 v4, 0x270f

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "calendar_reminders"

    iget-object v0, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    if-nez v0, :cond_7

    move v0, v3

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_2
    move v8, v3

    .line 203
    goto/16 :goto_1

    .line 212
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    .line 217
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    .line 238
    :cond_5
    iget-object v0, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;->isVisible:Z

    goto :goto_6

    :cond_6
    iget-object v4, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    iget-wide v4, v4, Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;->priority:J

    goto :goto_7

    :cond_7
    iget-object v0, v9, Lam/sunrise/android/calendar/api/models/datas/Calendar;->defaults:Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;->reminders:Z

    goto :goto_8

    .line 258
    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 259
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    move-object v0, v6

    .line 265
    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto/16 :goto_5
.end method

.method public static a(Landroid/content/Context;[Lam/sunrise/android/calendar/api/models/datas/Connection;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lam/sunrise/android/calendar/api/models/datas/Connection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    .line 159
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {p0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v7, v5

    .line 84
    :goto_1
    if-eqz v7, :cond_4

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    :goto_2
    move v2, v3

    .line 90
    :goto_3
    array-length v0, p1

    if-ge v2, v0, :cond_6

    move v6, v3

    .line 92
    :goto_4
    if-eqz v7, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    .line 93
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v8, p1, v2

    iget-object v8, v8, Lam/sunrise/android/calendar/api/models/datas/Connection;->id:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    aget-object v0, p1, v2

    .line 98
    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->id:Ljava/lang/String;

    invoke-static {v6}, Lam/sunrise/android/calendar/provider/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_type"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_is_disconnected"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isDisconnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_is_unavailable"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isUnavailable:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-boolean v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isDisconnected:Z

    if-nez v6, :cond_8

    iget-boolean v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isUnavailable:Z

    if-nez v6, :cond_8

    .line 112
    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->id:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->calendars:[Lam/sunrise/android/calendar/api/models/datas/Calendar;

    invoke-static {p0, v6, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;Ljava/lang/String;[Lam/sunrise/android/calendar/api/models/datas/Calendar;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 115
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move v0, v5

    .line 121
    :goto_5
    if-nez v0, :cond_2

    .line 123
    aget-object v0, p1, v2

    .line 124
    sget-object v6, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    invoke-static {v6}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_id"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->id:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_type"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_info"

    iget-object v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->info:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_is_disconnected"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isDisconnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "connection_is_unavailable"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isUnavailable:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-boolean v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isDisconnected:Z

    if-nez v6, :cond_2

    iget-boolean v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->isUnavailable:Z

    if-nez v6, :cond_2

    .line 140
    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->id:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Connection;->calendars:[Lam/sunrise/android/calendar/api/models/datas/Calendar;

    invoke-static {p0, v6, v0}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/Context;Ljava/lang/String;[Lam/sunrise/android/calendar/api/models/datas/Calendar;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_3
    move v7, v3

    .line 77
    goto/16 :goto_1

    .line 87
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    .line 92
    :cond_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    .line 152
    :cond_6
    :goto_6
    if-eqz v7, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 153
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move-object v0, v4

    .line 159
    goto/16 :goto_0

    :cond_8
    move v0, v5

    goto/16 :goto_5

    :cond_9
    move v0, v3

    goto/16 :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Attendees;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/datas/Attendees;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 449
    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Attendees;->data:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 451
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 452
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-static {v4, p0, p1, v5}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    return-object v1
.end method

.method private static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    sget-object v2, Lam/sunrise/android/calendar/sync/c;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "connection_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .line 48
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_2
    return-object v3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lam/sunrise/android/calendar/provider/h;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/sync/b;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_2

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "calendar_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    return-object v3
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 435
    invoke-static {p0, p1}, Lam/sunrise/android/calendar/provider/i;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lam/sunrise/android/calendar/sync/a;->a(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/b/e;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/g;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_calendar_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_source_id"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_type"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_status"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_title"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_description"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_is_editable"

    iget-boolean v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->isEditable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "event_icon_overlay"

    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->icon:Lam/sunrise/android/calendar/api/models/datas/Event$Icon;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "event_icon_base_color"

    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->icon:Lam/sunrise/android/calendar/api/models/datas/Event$Icon;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_user_rsvp_status"

    iget-object v3, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->userRsvpStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 324
    const/4 v1, 0x0

    .line 325
    const/4 v0, 0x0

    .line 327
    iget-object v4, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    if-eqz v4, :cond_6

    iget-object v4, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v4, v4, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->rules:[Ljava/lang/String;

    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    iget-object v5, v0, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->rules:[Ljava/lang/String;

    array-length v6, v5

    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    .line 330
    const-string v8, "RRULE:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v0, :cond_3

    .line 331
    const-string v0, "RRULE:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 306
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->icon:Lam/sunrise/android/calendar/api/models/datas/Event$Icon;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event$Icon;->overlay:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->icon:Lam/sunrise/android/calendar/api/models/datas/Event$Icon;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Event$Icon;->baseColor:Ljava/lang/String;

    goto :goto_1

    .line 332
    :cond_3
    const-string v8, "EXDATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 334
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_4
    const-string v8, "EXDATE"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 339
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 342
    :cond_6
    const-string v4, "event_rrule"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 343
    const-string v4, "event_exdate"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 345
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 347
    :goto_4
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v1, p0, v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v4

    .line 349
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    if-nez v1, :cond_9

    .line 350
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v1, p0, v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lam/sunrise/android/calendar/b/d;->a(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 355
    const/4 v1, 0x6

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->add(II)V

    .line 356
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 364
    :goto_5
    const-string v6, "event_start_date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 365
    const-string v4, "event_end_date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    const-string v0, "event_timezone"

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 367
    const-string v0, "event_is_all_day"

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->isAllDay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 369
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    const/4 v1, 0x1

    .line 372
    iget-object v5, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    array-length v6, v5

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_6
    if-ge v1, v6, :cond_b

    aget-object v7, v5, v1

    .line 373
    if-eqz v0, :cond_a

    .line 374
    const/4 v0, 0x0

    .line 378
    :goto_7
    iget-wide v7, v7, Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;->minutes:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 345
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 358
    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_5

    .line 361
    :cond_9
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-virtual {v1, p0, v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->getTimestampInUTC(Lam/sunrise/android/calendar/b/e;Z)J

    move-result-wide v0

    goto :goto_5

    .line 376
    :cond_a
    const-string v8, "|"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 380
    :cond_b
    const-string v0, "event_reminders"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 383
    :cond_c
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/provider/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/provider/i;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->organizer:Lam/sunrise/android/calendar/api/models/datas/Person;

    if-eqz v0, :cond_d

    .line 400
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->organizer:Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {p1, v0, v1}, Lam/sunrise/android/calendar/sync/a;->b(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_d
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->inviter:Lam/sunrise/android/calendar/api/models/datas/Person;

    if-eqz v0, :cond_e

    .line 404
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->inviter:Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {p1, v0, v1}, Lam/sunrise/android/calendar/sync/a;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Person;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_e
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->attendees:Lam/sunrise/android/calendar/api/models/datas/Attendees;

    if-eqz v0, :cond_f

    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->attendees:Lam/sunrise/android/calendar/api/models/datas/Attendees;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Attendees;->data:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 410
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->attendees:Lam/sunrise/android/calendar/api/models/datas/Attendees;

    invoke-static {p1, v0, v1}, Lam/sunrise/android/calendar/sync/a;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Attendees;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    const-string v0, "event_attendees_count"

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->attendees:Lam/sunrise/android/calendar/api/models/datas/Attendees;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Attendees;->counts:Lam/sunrise/android/calendar/api/models/datas/Attendees$Counts;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/datas/Attendees$Counts;->invited:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 415
    :cond_f
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    if-eqz v0, :cond_10

    .line 416
    iget-object v0, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->id:Ljava/lang/String;

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    invoke-static {p1, v0, v1}, Lam/sunrise/android/calendar/sync/a;->a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Place;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_10

    .line 418
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_10
    return-object v2
.end method
