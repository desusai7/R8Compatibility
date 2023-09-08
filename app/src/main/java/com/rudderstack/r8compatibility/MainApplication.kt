package com.rudderstack.r8compatibility

import android.app.Application
import com.rudderstack.android.integrations.amplitude.AmplitudeIntegrationFactory
import com.rudderstack.android.sdk.core.RudderClient
import com.rudderstack.android.sdk.core.RudderConfig
import com.rudderstack.android.sdk.core.RudderLogger
import java.util.concurrent.TimeUnit

class MainApplication: Application() {

    override fun onCreate() {
        super.onCreate();
        val rudderClient =
            RudderClient.getInstance(
                this,
                "2TN3ND0PprUXPR8f02zdHtS5WjW",
                RudderConfig.Builder()
                    .withLogLevel(RudderLogger.RudderLogLevel.VERBOSE)
                    .withFlushPeriodically(300, TimeUnit.SECONDS)
//                    .withDbEncryption(RudderConfig.DBEncryption(true, "desu"))
                    .withFactory(AmplitudeIntegrationFactory.FACTORY)
                    .withDataPlaneUrl("https://rudderstacgwyx.dataplane.rudderstack.com")
                    .withTrackLifecycleEvents(true)
                    .withRecordScreenViews(true)
                    .build()
            )
//        rudderClient.flush()
        rudderClient.reset()

    }
}