.class public Lcom/adview/adapters/WqAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "WqAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 19
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    .line 24
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v7

    sget-object v8, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v7, v8, :cond_0

    .line 25
    const-string v7, "AdView SDK"

    const-string v8, "Into WQ"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v7, p0, Lcom/adview/adapters/WqAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 27
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_2

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object v7, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 31
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 34
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/adview/adapters/WqAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v7, v7, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/adview/adapters/WqAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v7, v7, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 36
    .local v3, "key2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 37
    .local v4, "mode":Ljava/lang/String;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v7

    sget-object v8, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v7, v8, :cond_3

    .line 38
    new-instance v4, Ljava/lang/String;

    .end local v4    # "mode":Ljava/lang/String;
    const-string v7, "Y"

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .restart local v4    # "mode":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/wqmobile/sdk/widget/ADView;

    invoke-direct {v6, v0}, Lcom/wqmobile/sdk/widget/ADView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v6, "view":Lcom/wqmobile/sdk/widget/ADView;
    new-instance v5, Ljava/lang/String;

    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "settings":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "<AppSettings>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<AppID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</AppID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<PublisherID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</PublisherID>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<URL></URL>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<AppStoreURL></AppStoreURL>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<BackgroundColor></BackgroundColor>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<TextColor></TextColor>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<UseLocationInfo></UseLocationInfo>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<RefreshRate>60</RefreshRate>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<TestMode>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</TestMode>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<NextADCount>0</NextADCount>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<LoopTimes>2</LoopTimes>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<AcceptsOfflineAD>N</AcceptsOfflineAD>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<OfflineADCount>0</OfflineADCount>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<OfflineADSurvivalDays>0</OfflineADSurvivalDays>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<Width></Width>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<Height></Height>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<UseInternalBrowser>false</UseInternalBrowser>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<FittingStrategy>size</FittingStrategy>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</AppSettings>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v6, v5}, Lcom/wqmobile/sdk/widget/ADView;->Init(Ljava/lang/String;)V

    .line 45
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/16 v9, 0x32

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Lcom/adview/AdViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v7, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v7}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 47
    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 48
    const/4 v6, 0x0

    .line 50
    goto/16 :goto_0

    .line 40
    .end local v5    # "settings":Ljava/lang/String;
    .end local v6    # "view":Lcom/wqmobile/sdk/widget/ADView;
    :cond_3
    new-instance v4, Ljava/lang/String;

    .end local v4    # "mode":Ljava/lang/String;
    const-string v7, "N"

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4    # "mode":Ljava/lang/String;
    goto/16 :goto_1
.end method
