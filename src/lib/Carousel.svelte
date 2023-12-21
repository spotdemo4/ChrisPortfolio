<script lang="ts">
	import { onMount } from 'svelte';

	export let images: { src: string; id: number; video?: boolean }[] = [];
	export let alt: string = '';

	let current_image_id: number = 0;
	let image_elements: any[] = [];
	let scroll_element: HTMLDivElement;

	onMount(() => {
		scroll_element.scrollLeft = 0;
	});
</script>

<div class="relative max-w-7xl sm:mx-2 basis-1/2 grow">
	<div
		class="flex overflow-x-scroll snap-x snap-mandatory rounded-t-lg"
		bind:this={scroll_element}
	>
		{#each images as image (image.id)}
			{#if image.video}
				<iframe
					bind:this={image_elements[image.id]}
					class="w-full h-auto shrink-0 snap-center"
					src="https://www.youtube.com/embed/{image.src}"
					title="YouTube video player"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen
				/>
			{:else}
				<img
					bind:this={image_elements[image.id]}
					src={image.src}
					{alt}
					class="h-auto snap-center"
				/>
			{/if}
		{/each}
	</div>

	{#if current_image_id > 0}
		<button
			class="sm:visible invisible absolute left-0 top-1/2 transform -translate-y-1/2 ml-2 inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 hover:bg-white/50 dark:hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none"
			on:click={() => {
				current_image_id -= 1;
				image_elements[current_image_id].scrollIntoView({ block: 'center', behavior: 'smooth' });
			}}
		>
			<svg
				aria-hidden="true"
				class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-300"
				fill="none"
				stroke="currentColor"
				viewBox="0 0 24 24"
				xmlns="http://www.w3.org/2000/svg"
				><path
					stroke-linecap="round"
					stroke-linejoin="round"
					stroke-width="2"
					d="M15 19l-7-7 7-7"
				/>
			</svg>
		</button>
	{/if}

	{#if current_image_id < images.length - 1}
		<button
			class="sm:visible invisible absolute right-0 top-1/2 transform -translate-y-1/2 mr-2 inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 hover:bg-white/50 dark:hover:bg-gray-800/60"
			on:click={() => {
				current_image_id += 1;
				image_elements[current_image_id].scrollIntoView({ block: 'center', behavior: 'smooth' });
			}}
		>
			<svg
				aria-hidden="true"
				class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-300"
				fill="none"
				stroke="currentColor"
				viewBox="0 0 24 24"
				xmlns="http://www.w3.org/2000/svg"
			>
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
		</button>
	{/if}

	<p class="text-center text-white sm:block hidden">
		Utilize the arrows to move through the slides
	</p>

	<p class="text-center text-white sm:hidden block">Scroll to move through the slides</p>
</div>

<style>
	/* Works on Firefox */
	* {
		scrollbar-width: auto;
		scrollbar-color: blue gray;
	}

	/* Works on Chrome, Edge, and Safari */
	*::-webkit-scrollbar {
		width: 12px;
	}

	*::-webkit-scrollbar-track {
		background: gray;
        border-bottom-left-radius: 7px;
        border-bottom-right-radius: 7px;
	}

	*::-webkit-scrollbar-thumb {
		background-color: blue;
	}
</style>
